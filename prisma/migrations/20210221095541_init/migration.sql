-- CreateTable
CREATE TABLE "Alpha" (
    "id" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Beta" (
    "timestamp" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "alphaId" TEXT,

    PRIMARY KEY ("timestamp")
);

-- CreateIndex
CREATE INDEX "Beta.alphaId_index" ON "Beta"("alphaId");

-- AddForeignKey
ALTER TABLE "Beta" ADD FOREIGN KEY ("alphaId") REFERENCES "Alpha"("id") ON DELETE SET NULL ON UPDATE CASCADE;
