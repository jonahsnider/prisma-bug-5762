const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient({ log: ["query", "info", "warn", "error"] });

async function main() {
  const alpha = await prisma.alpha.create({ data: {} });
  await prisma.beta.create({ data: { alphaId: alpha.id } });
}

main().catch((error) => {
  throw error;
});
