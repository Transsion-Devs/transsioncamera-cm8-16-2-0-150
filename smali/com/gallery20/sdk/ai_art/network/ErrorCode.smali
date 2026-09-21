.class public final Lcom/gallery20/sdk/ai_art/network/ErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALGORITHM_ERROR:Ljava/lang/String; = "5007"

.field public static final ARM_TOO_SMALL:Ljava/lang/String; = "4003"

.field public static final CLOTH_TOO_SMALL:Ljava/lang/String; = "4005"

.field public static final INSTANCE:Lcom/gallery20/sdk/ai_art/network/ErrorCode;

.field public static final NOT_SUPPORT_AI_PROCESS:Ljava/lang/String; = "4001"

.field public static final NO_ARM:Ljava/lang/String; = "4002"

.field public static final NO_CLOTH:Ljava/lang/String; = "4004"

.field public static final TIMESTAMP_EXPIRED:Ljava/lang/String; = "TIMESTAMP_EXPIRED"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gallery20/sdk/ai_art/network/ErrorCode;

    invoke-direct {v0}, Lcom/gallery20/sdk/ai_art/network/ErrorCode;-><init>()V

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/ErrorCode;->INSTANCE:Lcom/gallery20/sdk/ai_art/network/ErrorCode;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
