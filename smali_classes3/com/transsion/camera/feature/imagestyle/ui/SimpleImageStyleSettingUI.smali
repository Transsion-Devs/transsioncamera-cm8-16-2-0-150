.class public Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;
.super Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI<",
        "Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;",
        ">;",
        "Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

.field private mIsSettingUIClick:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$31Aa5bzjO3Un4GWjDbL5RV4ohtc(Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->lambda$new$3(Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DHXab7EH9TzfJQoTV2f-3zQC0ZQ(Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->lambda$new$5(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DmyYuVgGVYLR9HIcg3Kyz2YOH5g(Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->lambda$setupEntryView$1(Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ptm3u7QPUhzabpe1x53EPRWGsvw(Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;Ljava/lang/String;)V
    .registers 3

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->setCurrentPosition(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YX_61j6qCH6lHH0OOSAZeTGL1qM(Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$e9se5aRawSeaUZWlFVpj3lFSCDE(Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;)V
    .registers 2

    .line 134
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->setController(Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n8Zu0HZp_2PlRBQMVwt_HtL_fsw(Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;Ljava/lang/String;)V
    .registers 3

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->setCurrentPosition(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SimpleImageStyle"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;-><init>(Landroid/content/res/Resources;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mIsSettingUIClick:Z

    .line 95
    new-instance p1, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private synthetic lambda$new$3(Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;)V
    .registers 3

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;-><init>()V

    .line 101
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;)V

    .line 102
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    check-cast v0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$new$5(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 96
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setupEntryView$1(Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;)V
    .registers 3

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda4;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;)V

    .line 63
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->updateViewLayoutParams(Z)V

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildAdapter()Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;"
        }
    .end annotation

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    check-cast p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getItemInfoList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-super {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->getItemInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->convertItemInfos(Ljava/util/List;ZI)Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    if-nez p0, :cond_14

    goto :goto_1a

    :cond_14
    check-cast p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->getCurrentPosition()I

    move-result v1

    .line 148
    :goto_1a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    .line 149
    instance-of v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    if-eqz v1, :cond_2a

    .line 150
    check-cast p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->setSelected(Z)Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    :cond_2a
    return-object v0
.end method

.method protected initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;)",
            "Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 42
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_23

    :catch_c
    move-exception v2

    .line 45
    sget-object v3, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initRecyclerViewAdapter with invalid value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    :cond_23
    :goto_23
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;-><init>(Ljava/util/List;IILcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V

    return-object v0
.end method

.method protected bridge synthetic initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public isSettingUIClick()Z
    .registers 1

    .line 139
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mIsSettingUIClick:Z

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method protected onItemSelected(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;)V
    .registers 7

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mIsSettingUIClick:Z

    .line 82
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->onItemSelected(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;)V

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    instance-of v1, v1, Lcom/transsion/camera/feature/imagestyle/SimpleImageStyle;

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    .line 84
    sget-object v1, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageStyleOnItemSelected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mImageStyleValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object p1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mImageStyleValue:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 86
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 87
    const-string v1, "closed_reason_user"

    const-string v3, "_global_scope"

    const-string v4, "key_image_style_close_reason"

    invoke-virtual {p1, v4, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    check-cast p1, Lcom/transsion/camera/feature/imagestyle/SimpleImageStyle;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleBase;->onValueChangedFromUser(Z)V

    .line 91
    :cond_46
    iput-boolean v2, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mIsSettingUIClick:Z

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected registerKeyToMonitor()V
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_30

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->getColorStyleStatusChangeListener()Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    move-result-object v1

    const-string v2, "key_super_definition"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    invoke-interface {v3}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->getColorStyleStatusChangeListener()Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_30
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_7

    .line 71
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 73
    :cond_7
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_e

    .line 75
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_e
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setParentSettingUIController(Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V
    .registers 3

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    check-cast p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 4

    .line 58
    invoke-super {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->setupEntryView()V

    .line 59
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    check-cast v0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected unRegisterKeyToMonitor()V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_30

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->getColorStyleStatusChangeListener()Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    move-result-object v1

    const-string v2, "key_super_definition"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    invoke-interface {v3}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->getColorStyleStatusChangeListener()Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_30
    return-void
.end method
