.class public Lcom/transsion/camera/app/ui/mode/ModeUIItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static FEATURE_MAP:Ljava/util/Map;


# instance fields
.field private final mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

.field public final mIsSellingPoint:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->FEATURE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    .line 22
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mIsSellingPoint:Z

    return-void
.end method

.method private static getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 54
    sget-object v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->FEATURE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_b

    return-object p0

    :cond_b
    return-object v0
.end method

.method public static getMMKV()Lcom/tencent/mmkv/MMKV;
    .registers 1

    .line 67
    const-string v0, "SellingPoint"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static getVal(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 59
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->decodeBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setVal(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 63
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    return-object p0
.end method
