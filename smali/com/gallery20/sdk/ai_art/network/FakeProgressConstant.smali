.class final Lcom/gallery20/sdk/ai_art/network/FakeProgressConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMAGE_PROCESS_STEP1_FAKE_MILLIS:J = 0x4e20L

.field public static final IMAGE_PROCESS_STEP1_PROGRESS:D = 0.8

.field public static final IMAGE_PROCESS_STEP2_FAKE_MILLIS:J = 0x7530L

.field public static final IMAGE_PROCESS_STEP2_PROGRESS:D = 0.9

.field public static final IMAGE_PROCESS_STEP3_FAKE_MILLIS:J = 0x9c40L

.field public static final IMAGE_PROCESS_STEP3_PROGRESS:D = 0.95

.field public static final IMAGE_PROCESS_STEP4_FAKE_MILLIS:J = 0xd6d8L

.field public static final IMAGE_PROCESS_STEP4_PROGRESS:D = 1.0

.field public static final INSTANCE:Lcom/gallery20/sdk/ai_art/network/FakeProgressConstant;

.field public static final WAIT_TIME:J = 0x64L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gallery20/sdk/ai_art/network/FakeProgressConstant;

    invoke-direct {v0}, Lcom/gallery20/sdk/ai_art/network/FakeProgressConstant;-><init>()V

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/FakeProgressConstant;->INSTANCE:Lcom/gallery20/sdk/ai_art/network/FakeProgressConstant;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
