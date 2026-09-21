.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/IItemListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mSettingItemUIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DlZDX2Nl4FrUV_QSV77aqZ5yvvk(Ljava/lang/String;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;)Z
    .registers 2

    .line 74
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GAdId_kSxbs8avQR-5HRukKJqSA(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;IILcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->lambda$initItemUI$0(IILcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MTbbPsyaR2v4x6-voJaXWbg9h_I(Ljava/lang/String;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;)V
    .registers 2

    .line 91
    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/IItemListener;->onItemChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RcVPgkyI1bYme7URT2AtLW-OLHg(ZLcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;)V
    .registers 2

    .line 86
    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;->updateLowLight(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uy6jAvJNo9K_af9tCY48PRQoLF8(Ljava/util/List;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;)V
    .registers 2

    .line 81
    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;->setDeviceSettingData(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHgqA2iJd0cX0JA3iHTfTcEhpvU(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;)V
    .registers 4

    .line 55
    invoke-interface {p3, p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;->createItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aBSg7Xgl5KEqXPM6DA75KFMzUVA(ILcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;)V
    .registers 2

    .line 51
    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;->onOrientationChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sq6Bmf-jYQpNHY7QaoV56BP2ZjM(IZLcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;)V
    .registers 3

    .line 47
    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ItemUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;

    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/SettingItemUIProvider;->createSettingItemUIList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$initItemUI$0(IILcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;)V
    .registers 4

    .line 41
    invoke-interface {p3, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;->setItemListener(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/IItemListener;)V

    .line 42
    invoke-interface {p3, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;->initItemUI(II)V

    return-void
.end method


# virtual methods
.method public createItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 6

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda8;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 56
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_20

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_1b

    const/4 p0, 0x0

    goto :goto_1d

    :cond_1b
    const/16 p0, 0x8

    :goto_1d
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    return-void
.end method

.method public initItemUI(II)V
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;II)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onItemChanged(Ljava/lang/String;)V
    .registers 5

    .line 90
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemChanged item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda6;-><init>(IZ)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 67
    const-string v2, "key_ai_art_museum"

    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 69
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 71
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mSettingItemUIs is empty!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_70

    .line 74
    :cond_30
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;

    invoke-interface {v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 76
    sget-object v4, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDeviceSettingData invalid effectValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", change defaultValue: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_4

    .line 81
    :cond_70
    :goto_70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setupItemView()V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 5

    .line 85
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLowLight lowLight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->mSettingItemUIs:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
