.class public Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IGoogleLensUI;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;,
        Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$GoogleLensDataCallbackImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "on"

.field private static final KEY:Ljava/lang/String; = "key_google_lens"

.field private static final MSG_HIDE_GOOGLE_LENS:I = 0x2

.field private static final MSG_SHOW_GOOGLE_LENS:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEnable:Z

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mLensSupport:Z

.field private final mMainHandler:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

.field private final mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOrientation:I

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mVisibleState:Z


# direct methods
.method public static synthetic $r8$lambda$PUtbqbpyt6cntJYFJjrr32U8OoY(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$QiNW6ZL7eN8vbsYsS0WmQS7Z6Hs(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mMainHandler:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideGoogleLensView(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->hideGoogleLensView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowGoogleLensView(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->showGoogleLensView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GoogleLensUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mOrientation:I

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensSupport:Z

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    new-instance v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 81
    new-instance v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;-><init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mMainHandler:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

    return-void
.end method

.method private hideGoogleLensView()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_c

    .line 246
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mLensIconView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->onVisibilityChanged(Z)V

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initLensView(Landroid/view/View;)V
    .registers 4

    .line 96
    sget v0, Lcom/transsion/camera/R$id;->google_lens_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 97
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->bottomButtonPressSealAnimation(Landroid/view/View;)V

    .line 99
    iget p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mOrientation:I

    const/4 v0, -0x1

    if-eq v0, p1, :cond_1d

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 102
    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mEnable:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_10

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->ringScreenLightUpdateUI()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_google_lens_black:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 124
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_google_lens:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private onVisibilityChanged(Z)V
    .registers 5

    .line 221
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mVisibleState:Z

    if-eq v0, p1, :cond_28

    .line 224
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mVisibleState:Z

    if-eqz p1, :cond_21

    .line 226
    const-string p1, "google_lens_show"

    goto :goto_23

    :cond_21
    const-string p1, "google_lens_hide"

    :goto_23
    const-string v0, "key_google_lens_visible"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 137
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGoogleLensEvent eventKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p0, :cond_37

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mStatusMonitor is null | eventValue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_37
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showGoogleLensView()V
    .registers 2

    .line 231
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensSupport:Z

    if-nez v0, :cond_c

    .line 232
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "don\'t show GoogleLensView when Lens not support"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_18

    .line 237
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mLensIconView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_18
    const/4 v0, 0x1

    .line 240
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->onVisibilityChanged(Z)V

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public checkLensStatus()V
    .registers 3

    .line 205
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "check google lens status"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    const-string v0, "key_check_lens_status"

    const-string v1, "check_lens_status"

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 86
    sget v0, Lcom/transsion/camera/R$layout;->google_lens_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->initLensView(Landroid/view/View;)V

    .line 89
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 90
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->ringScreenLightUpdateUI()V

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGoogleLensButtonVisible()I
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 163
    const-string p0, "key_google_lens"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_e

    .line 169
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "deviceSetting is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    const-string p0, "on"

    return-object p0

    .line 172
    :cond_e
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

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

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 131
    sget-object p1, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "on google lens clicked"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    const-string p1, "key_google_lens_click"

    const-string v0, "google_lens_clicked"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 192
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 194
    iput p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mOrientation:I

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez p0, :cond_20

    .line 197
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationChanged mLensIconView is null orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_20
    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

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

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 179
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "deviceSetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_c
    new-instance v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$GoogleLensDataCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$GoogleLensDataCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 154
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mEnable:Z

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_1f

    .line 157
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1f
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setGoogleLensSupport(Z)V
    .registers 5

    .line 211
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGoogleLensSupport isGoogleLensSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 213
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensSupport:Z

    .line 215
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mVisibleState:Z

    if-eqz v0, :cond_21

    if-nez p1, :cond_21

    .line 216
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->hideGoogleLensView()V

    :cond_21
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 107
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mMainHandler:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
