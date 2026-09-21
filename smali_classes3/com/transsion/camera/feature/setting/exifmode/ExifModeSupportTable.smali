.class public Lcom/transsion/camera/feature/setting/exifmode/ExifModeSupportTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mEnableFeature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mModeSettingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 11
    const-string v0, "key_start_continuous_shot_action"

    const-string v1, "billion"

    const-string v2, "on"

    invoke-static {v2, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/exifmode/ExifModeSupportTable;->mEnableFeature:Ljava/util/List;

    .line 17
    new-instance v0, Lcom/transsion/camera/feature/setting/exifmode/ExifModeSupportTable$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/exifmode/ExifModeSupportTable$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/exifmode/ExifModeSupportTable;->mModeMap:Ljava/util/Map;

    .line 56
    new-instance v0, Lcom/transsion/camera/feature/setting/exifmode/ExifModeSupportTable$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/exifmode/ExifModeSupportTable$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/exifmode/ExifModeSupportTable;->mModeSettingMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModeValue(Ljava/lang/String;)I
    .registers 2

    .line 80
    sget-object v0, Lcom/transsion/camera/feature/setting/exifmode/ExifModeSupportTable;->mModeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_f

    .line 81
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public static getSettingMapValue(Ljava/lang/String;)I
    .registers 2

    .line 85
    sget-object v0, Lcom/transsion/camera/feature/setting/exifmode/ExifModeSupportTable;->mModeSettingMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_f

    .line 86
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public static getSupportModes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/setting/exifmode/ExifModeSupportTable;->mModeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
