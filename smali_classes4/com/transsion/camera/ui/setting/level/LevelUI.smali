.class public Lcom/transsion/camera/ui/setting/level/LevelUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final LEVEL_VIEW_HIDE:I = 0x1

.field private static final LEVEL_VIEW_SHOW:I = 0x2

.field private static final MSG_UPDATE_LEVEL_VIEW:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEnabled:Z

.field private final mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

.field private mIsShown:Z

.field private mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsShown(Lcom/transsion/camera/ui/setting/level/LevelUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mIsShown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLevelView(Lcom/transsion/camera/ui/setting/level/LevelUI;)Lcom/transsion/camera/ui/setting/level/Gradienter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewViewRect(Lcom/transsion/camera/ui/setting/level/LevelUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoUpdateLevelView(Lcom/transsion/camera/ui/setting/level/LevelUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/level/LevelUI;->doUpdateLevelView(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOrHideGradienterInMainThread(Lcom/transsion/camera/ui/setting/level/LevelUI;ZZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/level/LevelUI;->showOrHideGradienterInMainThread(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LevelUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 319
    new-instance p1, Lcom/transsion/camera/ui/setting/level/LevelUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/level/LevelUI$1;-><init>(Lcom/transsion/camera/ui/setting/level/LevelUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 59
    sget-object p1, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    new-instance p1, Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/level/LevelUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    return-void
.end method

.method private doUpdateLevelView(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    return-void

    .line 272
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->showView()V

    return-void

    .line 269
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->hideView()V

    return-void
.end method

.method private hideView()V
    .registers 2

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mIsShown:Z

    const/4 v0, 0x4

    .line 288
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->setLevelViewVisibility(I)V

    return-void
.end method

.method private setLevelViewVisibility(I)V
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2c

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    sget-object p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLevelViewVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_20

    const-string p1, "VISIBLE"

    goto :goto_22

    :cond_20
    const-string p1, "INVISIBLE"

    :goto_22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method private showOrHideGradienterInMainThread(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->showOrHideGradienterInMainThread(ZZ)V

    return-void
.end method

.method private showOrHideGradienterInMainThread(ZZ)V
    .registers 8

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xc8

    const/16 v4, 0x64

    if-eqz p1, :cond_20

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_1c

    move-wide v0, v2

    :cond_1c
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 340
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_2e

    move-wide v0, v2

    :cond_2e
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showView()V
    .registers 4

    .line 292
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->updateRootLayoutRect()V

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mIsShown:Z

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->setLevelViewVisibility(I)V

    return-void
.end method

.method private updateLevelRootLayout()V
    .registers 5

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    if-nez v0, :cond_5

    return-void

    .line 227
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 228
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 229
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->level_view_setting_expand_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 230
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_fold_switch_preview"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_48

    const-string v2, "on"

    .line 233
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->level_view_setting_hover_switch_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 236
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRootLayoutRect()V
    .registers 6

    .line 302
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 304
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 305
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 306
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->updateLevelRootLayout()V

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 4

    .line 115
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "disable+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_c

    return-void

    .line 119
    :cond_c
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mEnabled:Z

    if-nez v1, :cond_16

    .line 120
    const-string p0, "disabled,so return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_16
    const/4 v1, 0x0

    .line 123
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mEnabled:Z

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 126
    const-string p0, "disable-"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 65
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCreateEntryView+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mContext:Landroid/content/Context;

    .line 67
    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensor:Landroid/hardware/Sensor;

    .line 69
    sget v1, Lcom/transsion/camera/R$layout;->level:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    sget p2, Lcom/transsion/camera/R$id;->img_level:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/level/Gradienter;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    .line 71
    const-string p0, "doCreateEntryView-"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public enable()V
    .registers 5

    .line 100
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "enable+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_c

    return-void

    .line 104
    :cond_c
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mEnabled:Z

    if-eqz v1, :cond_16

    .line 105
    const-string p0, "enabled,so return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_16
    new-instance v1, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/level/LevelUI$SensorEventListenerImpl;-><init>(Lcom/transsion/camera/ui/setting/level/LevelUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    .line 109
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mEnabled:Z

    .line 110
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, p0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 111
    const-string p0, "enable-"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 154
    const-string p0, "key_level"

    return-object p0
.end method

.method protected getLevelView()Lcom/transsion/camera/ui/setting/level/Gradienter;
    .registers 1

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mLevelView:Lcom/transsion/camera/ui/setting/level/Gradienter;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->showOrHideGradienterInMainThread(Z)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public isSupportPrivacyMode()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_d

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_9

    return-void

    .line 92
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->disable()V

    return-void

    .line 89
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->enable()V

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 219
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 220
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->updateLevelRootLayout()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 213
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 214
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->updateLevelRootLayout()V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 183
    sget-object p1, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDeviceSetting is null!"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1a

    .line 185
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->showOrHideGradienterInMainThread(ZZ)V

    .line 188
    :goto_1a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_2e

    .line 189
    const-string v0, "key_level"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_fold_switch_preview"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_2e
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 4

    .line 196
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setSettingMonitor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->updateLevelRootLayout()V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 168
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 169
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1e

    .line 171
    const-string v1, "key_level"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fold_switch_preview"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 174
    :cond_1e
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->disable()V

    const/4 v0, 0x4

    .line 175
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->setLevelViewVisibility(I)V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mHandler:Lcom/transsion/camera/ui/setting/level/LevelUI$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public updateCameraState(I)V
    .registers 5

    .line 313
    sget-object v0, Lcom/transsion/camera/ui/setting/level/LevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCameraState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2b

    .line 314
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_2b

    .line 315
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->showOrHideGradienterInMainThread(ZZ)V

    :cond_2b
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/LevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/LevelUI;->updateRootLayoutRect()V

    return-void
.end method
