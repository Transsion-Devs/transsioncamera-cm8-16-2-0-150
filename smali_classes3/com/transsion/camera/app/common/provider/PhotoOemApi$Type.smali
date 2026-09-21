.class final enum Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/provider/PhotoOemApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

.field public static final enum LOW_QUALITY:Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

.field public static final enum PROCESSING:Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;
    .registers 2

    .line 127
    sget-object v0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;->PROCESSING:Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    sget-object v1, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;->LOW_QUALITY:Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 128
    new-instance v0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    const-string v1, "PROCESSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;->PROCESSING:Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    .line 129
    new-instance v0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    const-string v1, "LOW_QUALITY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;->LOW_QUALITY:Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    .line 127
    invoke-static {}, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;->$values()[Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;->$VALUES:[Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;
    .registers 2

    .line 127
    const-class v0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;
    .registers 1

    .line 127
    sget-object v0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;->$VALUES:[Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    return-object v0
.end method
