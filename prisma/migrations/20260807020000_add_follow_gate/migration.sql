-- Follow gate: campaigns can require a follow before the reveal link is sent.
ALTER TABLE "Automation" ADD COLUMN "followGateEnabled" BOOLEAN NOT NULL DEFAULT false;
ALTER TABLE "Automation" ADD COLUMN "followGateMessage" TEXT;

-- New DM log status for the nudge sent to non-followers.
ALTER TYPE "DmStatus" ADD VALUE 'FOLLOW_NUDGE';
