import { PrismaClient, Prisma } from '@prisma/client';
const prisma = new PrismaClient();

async function main() {
  const employees = await prisma.employees.findMany();
  console.log(employees);
  const team = await prisma.teams.findMany({
    include: {
      company_buildings: {
        select: {
          name: true,
        },
      },
    },
  });

  const joined = prisma.projects_employees.findMany({
    where: {
      OR: [{ employee_id: 1 }, { project_id: 1 }],
    },
    include: {
      projects: true,
      employees: true,
    },
  });

  const populated = prisma.employees.findMany({
    where: {
      email: 'manu@test.com',
    },
    select: {},
  });

  console.log(team);
  const projects = await prisma.projects.findMany({
    select: {
      title: true,
      projects_employees: {
        select: {
          employees: {
            select: {
              first_name: true,
              teams: {
                select: {
                  employees: {
                    select: {
                      email: true,
                      first_name: true,
                      last_name: true,
                    },
                  },
                },
              },
            },
          },
        },
      },
    },
  });

  console.log('projects', JSON.stringify(projects));

  const emp = await prisma.$queryRaw`
    SELECT e.email, t.name FROM employees AS e
    INNER JOIN teams AS t ON e.team_id = t.id;
  `;
  console.log('emp', emp);

  const pagination = await prisma.employees.findMany({
    select: {
      email: true,
    },
    orderBy: {
      email: 'desc',
    },
    // skip: 1,
    // take: 2,
  });

  console.log('pagination', pagination);
}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
  });

type EmployeeType = Prisma.employeesSelect;
type EmployeeCreate = Prisma.employeesCreateInput;
type EmployeeUpdate = Prisma.employeesUpdateInput;
