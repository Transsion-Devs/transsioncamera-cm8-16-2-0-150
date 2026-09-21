.class public final enum Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessMode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

.field public static final enum AIFRAME:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

.field public static final enum NORMAL:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

.field public static final enum ULTRAHD:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;


# instance fields
.field private final identifier:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    .registers 3

    .line 140
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->AIFRAME:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->ULTRAHD:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    sget-object v2, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->NORMAL:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 144
    new-instance v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    const/4 v1, 0x3

    const-string v2, "AIFRAME"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->AIFRAME:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    .line 148
    new-instance v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    const-string v1, "ULTRAHD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->ULTRAHD:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    .line 152
    new-instance v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->NORMAL:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    .line 140
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->$values()[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->$VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput p3, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->identifier:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    .registers 2

    .line 140
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    .registers 1

    .line 140
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->$VALUES:[Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()I
    .registers 1

    .line 161
    iget p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->identifier:I

    return p0
.end method
