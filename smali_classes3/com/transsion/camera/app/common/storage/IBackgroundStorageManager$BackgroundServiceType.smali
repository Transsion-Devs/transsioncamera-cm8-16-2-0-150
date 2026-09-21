.class public final enum Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackgroundServiceType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

.field public static final enum BG_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

.field public static final enum TZ_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
    .registers 2

    .line 130
    sget-object v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->BG_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    sget-object v1, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->TZ_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 131
    new-instance v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    const-string v1, "BG_SERVICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->BG_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    new-instance v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    const-string v1, "TZ_SERVICE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->TZ_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    .line 130
    invoke-static {}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->$values()[Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->$VALUES:[Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
    .registers 2

    .line 130
    const-class v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
    .registers 1

    .line 130
    sget-object v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->$VALUES:[Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    return-object v0
.end method
