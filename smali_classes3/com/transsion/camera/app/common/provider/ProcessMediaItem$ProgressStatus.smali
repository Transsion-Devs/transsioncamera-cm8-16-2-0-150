.class public final enum Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressStatus"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

.field public static final enum DETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

.field public static final enum INDETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;


# instance fields
.field private final identifier:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
    .registers 2

    .line 110
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->INDETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->DETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 114
    new-instance v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    const-string v1, "INDETERMINATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->INDETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    .line 118
    new-instance v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    const-string v1, "DETERMINATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->DETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    .line 110
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->$values()[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->$VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput p3, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->identifier:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
    .registers 2

    .line 110
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
    .registers 1

    .line 110
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->$VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()I
    .registers 1

    .line 127
    iget p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->identifier:I

    return p0
.end method
