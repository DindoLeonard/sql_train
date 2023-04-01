-- CreateTable
CREATE TABLE "company_buildings" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(300) NOT NULL,

    CONSTRAINT "company_buildings_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "employees" (
    "id" SERIAL NOT NULL,
    "first_name" VARCHAR(300) NOT NULL,
    "last_name" VARCHAR(300) NOT NULL,
    "birthdate" DATE NOT NULL,
    "email" VARCHAR(200) NOT NULL,
    "team_id" INTEGER,

    CONSTRAINT "employees_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "intranet_accounts" (
    "id" SERIAL NOT NULL,
    "email" VARCHAR(200) NOT NULL,
    "password" VARCHAR(200) NOT NULL,

    CONSTRAINT "intranet_accounts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "projects" (
    "id" SERIAL NOT NULL,
    "title" VARCHAR(300) NOT NULL,
    "deadline" DATE,

    CONSTRAINT "projects_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "projects_employees" (
    "employee_id" INTEGER NOT NULL,
    "project_id" INTEGER NOT NULL,

    CONSTRAINT "projects_employees_pkey" PRIMARY KEY ("employee_id","project_id")
);

-- CreateTable
CREATE TABLE "teams" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(300) NOT NULL,
    "building_id" INTEGER,

    CONSTRAINT "teams_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "employees_email_key" ON "employees"("email");

-- AddForeignKey
ALTER TABLE "employees" ADD CONSTRAINT "employees_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "teams"("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "intranet_accounts" ADD CONSTRAINT "intranet_accounts_email_fkey" FOREIGN KEY ("email") REFERENCES "employees"("email") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "projects_employees" ADD CONSTRAINT "projects_employees_employee_id_fkey" FOREIGN KEY ("employee_id") REFERENCES "employees"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "projects_employees" ADD CONSTRAINT "projects_employees_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "projects"("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "teams" ADD CONSTRAINT "teams_building_id_fkey" FOREIGN KEY ("building_id") REFERENCES "company_buildings"("id") ON DELETE SET NULL ON UPDATE NO ACTION;

