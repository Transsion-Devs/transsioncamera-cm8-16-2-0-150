.class public abstract Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;


# static fields
.field public static final TYPE_ARC_FILTER:I = 0x1

.field public static final TYPE_IMAGE_STYLE:I = 0x0

.field public static final TYPE_SPLIT:I = 0x2


# instance fields
.field protected final mChildCommonSettingUIList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/setting/ISetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5BQgUhkyGqFQXbft9AWSx20hJSI(IILandroid/content/Context;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 4

    .line 59
    invoke-interface {p3, p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$67c-WVTuYgO3l0cvx_gaLqEzlzg(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 181
    const-string p0, "1"

    return-object p0
.end method

.method public static synthetic $r8$lambda$8CNaHGsRB3pBOY6Chsc83N4Mrp4(Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 2

    .line 139
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AtFWHSuIPV39_22gDAN9wIggeDU(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 196
    const-string p0, "1"

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ax8_HvsXBGvXtUEXjWM4j6UeRII(ILcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 2

    .line 84
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AyOt-LnJqj8rWTRQlZCRrlDqJJg(Ljava/lang/String;)Z
    .registers 1

    .line 180
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$C_u4fE-ORqPaKZGSlxX4dd7iTic(Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->lambda$new$0(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DPrXCeIajFWodI9hmMZl2ahmg1I(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;Ljava/util/Map;)V
    .registers 3

    .line 114
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GFj1uGKcGTXgeCGjn0LrPScanEk(ILcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 2

    .line 127
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PndR-q9jGHzAy9zDSb8HGEqlXYc(Ljava/lang/String;)Z
    .registers 1

    .line 195
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$UV36wFO8vZ8Kd_76GVYQuYglvfg(Ljava/lang/String;)Z
    .registers 2

    .line 205
    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "-1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$YVLbm2I21YDZ6Vmq69LuIiq5dPQ(Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->lambda$setDeviceSetting$5(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZRuQOc14rTUK69wIa8bBZRBjqeQ(Lcom/transsion/camera/app/common/setting/StatusMonitor;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 2

    .line 121
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXEtk0vvmtsqz7MbnZB8qkSSV00(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 206
    const-string p0, "1"

    return-object p0
.end method

.method public static synthetic $r8$lambda$oro1Njn-GRhlrny5VsJvvlqoKnw(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 2

    .line 133
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tPVieZvSLkfLgMiUTWPTewE7vwY(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 4

    .line 65
    invoke-interface {p3, p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mChildCommonSettingUIList:Landroid/util/SparseArray;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mFilterSettings:Ljava/util/Map;

    .line 43
    const-string v1, "com.transsion.camera.feature.imagestyle.ui.SimpleImageStyleSettingUI"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    const-string v1, "com.transsion.camera.feature.arcfilter.setting.ui.SimpleArcFilterSettingUI"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    new-instance p1, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private doTask(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mChildCommonSettingUIList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 144
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mChildCommonSettingUIList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 3

    .line 50
    instance-of v0, p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;

    if-eqz v0, :cond_9

    .line 51
    check-cast p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;->setParentSettingUIController(Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$setDeviceSetting$5(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 3

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mFilterSettings:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda17;-><init>(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method protected checkPostRestriction()Z
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mFilterSettings:Ljava/util/Map;

    const-string v1, "key_image_style"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda16;-><init>()V

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mFilterSettings:Ljava/util/Map;

    const-string v0, "key_filter"

    .line 173
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda16;-><init>()V

    .line 174
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_49

    goto :goto_4b

    :cond_49
    const/4 p0, 0x0

    return p0

    :cond_4b
    :goto_4b
    const/4 p0, 0x1

    return p0
.end method

.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 5

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    .line 65
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda18;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getColorStyleChildAdapter(I)Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;"
        }
    .end annotation

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mChildCommonSettingUIList:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 150
    instance-of v1, p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;

    if-eqz v1, :cond_19

    .line 151
    check-cast p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;->getChildAdapter()Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 153
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->setChildItemViewType(I)V

    return-object p0

    :cond_19
    return-object v0
.end method

.method public abstract synthetic getColorStyleStatusChangeListener()Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
.end method

.method protected getColorStyleValue()Ljava/lang/String;
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mFilterSettings:Ljava/util/Map;

    const-string v1, "key_image_style"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;-><init>()V

    .line 179
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda12;-><init>()V

    .line 180
    invoke-virtual {v0, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda13;-><init>()V

    .line 181
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v2, "0"

    .line 182
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->getColorStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getColorStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_image_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "key_filter"

    const-string v3, "1"

    const-string v4, "0"

    if-nez v1, :cond_72

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mFilterSettings:Ljava/util/Map;

    const-string p1, "key_color_style"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;-><init>()V

    .line 211
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 212
    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 189
    :cond_35
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_44

    const-string p1, "-1"

    .line 190
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_44

    return-object v3

    .line 193
    :cond_44
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mFilterSettings:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;-><init>()V

    .line 194
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda5;-><init>()V

    .line 195
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda6;-><init>()V

    .line 196
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 197
    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 200
    :cond_72
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_79

    return-object v3

    .line 203
    :cond_79
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mFilterSettings:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;-><init>()V

    .line 204
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda7;-><init>()V

    .line 205
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda8;-><init>()V

    .line 206
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 207
    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getKey()Ljava/lang/String;
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    const-string v0, "key_color_style"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v0, "key_filter"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v0, "key_image_style"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public abstract synthetic getValue()Ljava/lang/String;
.end method

.method public hideEntryView()V
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 78
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda14;-><init>()V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 5

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda0;-><init>(IILandroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method protected isSettingUIClick()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 161
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mChildCommonSettingUIList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 162
    iget-object v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mChildCommonSettingUIList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 163
    instance-of v3, v2, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;

    if-eqz v3, :cond_20

    check-cast v2, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;

    invoke-interface {v2}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;->isSettingUIClick()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return v0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 126
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->notifyCameraOperateAction(I)V

    .line 127
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract synthetic notifyColorStyleDataSetChanged()V
.end method

.method public abstract synthetic notifyColorStyleItemChanged()V
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 83
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 84
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 3

    .line 138
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 3

    .line 132
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 133
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda19;-><init>(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 112
    new-instance p1, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->mFilterSettings:Ljava/util/Map;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_1d
    return-void
.end method

.method public abstract synthetic setEnable(Z)V
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 121
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 2

    .line 71
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 72
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda15;-><init>()V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 106
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 107
    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->doTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract synthetic updatePreviewRect(Landroid/graphics/Rect;)V
.end method
