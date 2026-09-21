.class public Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAICam:Z

.field private mAnimResName:Ljava/lang/String;

.field private mAnimThumbnailId:I

.field protected final mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field protected final mContext:Landroid/content/Context;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDescription:Landroid/widget/TextView;

.field private mDescriptionTextColorId:I

.field private mDescriptionTextId:I

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mIconInDescriptionId:I

.field private final mMainHandler:Landroid/os/Handler;

.field private mMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

.field private final showDialogRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$3oQyN6_lawwZ0_21fneYhfxUZ2k(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->lambda$showDialog$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$9bDjP8vWWKZka8nPlG8riOEitnU(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 83
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$YLy8XLZd6deyQkZ_i4nF-Inp3Ws(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->lambda$showDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e9GTbTuV4NlD2KcSvVPtSMll26Q(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->lambda$showDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MCGuideUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/storage/DataStore;ZLcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V
    .registers 8

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mMainHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->showDialogRunnable:Ljava/lang/Runnable;

    .line 50
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 53
    iput-boolean p4, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAICam:Z

    .line 54
    iput-object p5, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    .line 55
    invoke-direct {p0, p4}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->loadGuideResource(Z)V

    return-void
.end method

.method private createGuideView(Z)Landroid/view/View;
    .registers 6

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$layout;->motion_capture_guide_layout:I

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 121
    sget v0, Lcom/transsion/camera/R$id;->motion_capture_guide_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescription:Landroid/widget/TextView;

    .line 122
    sget v0, Lcom/transsion/camera/R$id;->motion_capture_guide_anim_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/AutoPlayVapView;

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescription:Landroid/widget/TextView;

    iget v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextColorId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescription:Landroid/widget/TextView;

    iget v3, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mIconInDescriptionId:I

    invoke-static {v1, v2, v3}, Lcom/transsion/camera/utils/UIUtils;->replaceTextViewWithIcon(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 126
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimThumbnailId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimResName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayVapView;->startPlay(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object p1
.end method

.method private createGuideViewV2()Landroid/view/View;
    .registers 9

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->motion_capture_guide_layout_v2:I

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 185
    sget v1, Lcom/transsion/camera/R$id;->motion_capture_guide_description_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    sget v2, Lcom/transsion/camera/R$id;->motion_capture_guide_description_2:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 187
    sget v3, Lcom/transsion/camera/R$id;->motion_capture_guide_description_3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 188
    sget v4, Lcom/transsion/camera/R$id;->motion_capture_guide_video_view:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/AutoPlayVapView;

    .line 189
    sget v5, Lcom/transsion/camera/R$drawable;->thum_ai_cam_flash_snap_guide:I

    .line 192
    sget v6, Lcom/transsion/camera/R$drawable;->ic_flash_snap_light:I

    .line 193
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 194
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/camera/R$color;->motion_capture_guide_description_text_color_dark:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/camera/R$color;->motion_capture_guide_description_text_color_dark:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    sget v6, Lcom/transsion/camera/R$color;->motion_capture_guide_description_text_color_dark:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    sget v6, Lcom/transsion/camera/R$drawable;->ic_flash_snap_dark:I

    .line 199
    :cond_5c
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v6}, Lcom/transsion/camera/utils/UIUtils;->replaceTextViewWithIcon(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "video_vap_flash_snap_guide_v2.mp4"

    invoke-virtual {v4, p0, v1}, Lcom/transsion/camera/app/ui/widget/AutoPlayVapView;->startPlay(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private hideDialog()V
    .registers 3

    .line 111
    sget-object v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideDialog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_16
    return-void
.end method

.method private isActivityResumed()Z
    .registers 3

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 104
    check-cast p0, Landroid/app/Activity;

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v1
.end method

.method private synthetic lambda$showDialog$1()V
    .registers 4

    .line 89
    sget-object v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GuideDialog show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isActivityResumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->isActivityResumed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->updateFlag()V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x152

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_42
    return-void
.end method

.method private synthetic lambda$showDialog$2(Landroid/content/DialogInterface;)V
    .registers 5

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$showDialog$3(Landroid/content/DialogInterface;)V
    .registers 3

    .line 96
    sget-object p1, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "GuideDialog dismiss"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x153

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private loadGuideResource(Z)V
    .registers 10

    const/4 v0, 0x2

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 133
    :goto_6
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    or-int/2addr p1, v1

    const-string v1, "video_vap_flash_snap_guide_v2.mp4"

    const-string v2, "video_motion_capture_guide.mp4"

    if-eqz p1, :cond_7d

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4c

    const-string v1, "ai_cam_flash_snap_guide.mp4"

    if-eq p1, v0, :cond_39

    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    .line 135
    sget p1, Lcom/transsion/camera/R$drawable;->ic_flash_snap_dark:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mIconInDescriptionId:I

    .line 136
    sget p1, Lcom/transsion/camera/R$string;->flash_snap_lite_dialog_message:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextId:I

    .line 137
    sget p1, Lcom/transsion/camera/R$color;->motion_capture_guide_description_text_color_dark:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextColorId:I

    .line 138
    sget p1, Lcom/transsion/camera/R$drawable;->thum_ai_cam_flash_snap_guide:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimThumbnailId:I

    .line 139
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimResName:Ljava/lang/String;

    goto/16 :goto_ad

    .line 175
    :cond_31
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unreachable case"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_39
    sget p1, Lcom/transsion/camera/R$drawable;->ic_flash_snap_light:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mIconInDescriptionId:I

    .line 143
    sget p1, Lcom/transsion/camera/R$string;->flash_snap_lite_dialog_message:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextId:I

    .line 144
    sget p1, Lcom/transsion/camera/R$color;->motion_capture_guide_description_text_color:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextColorId:I

    .line 145
    sget p1, Lcom/transsion/camera/R$drawable;->thum_ai_cam_flash_snap_guide:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimThumbnailId:I

    .line 146
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimResName:Ljava/lang/String;

    goto :goto_ad

    .line 149
    :cond_4c
    sget p1, Lcom/transsion/camera/R$drawable;->ic_auto_capture_guide_dark:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mIconInDescriptionId:I

    .line 150
    sget p1, Lcom/transsion/camera/R$string;->motion_capture_dialog_message_new:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextId:I

    .line 151
    sget p1, Lcom/transsion/camera/R$color;->motion_capture_guide_description_text_color_dark:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextColorId:I

    .line 152
    sget p1, Lcom/transsion/camera/R$drawable;->thum_video_motion_capture_guide:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimThumbnailId:I

    .line 153
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimResName:Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2()Z

    move-result p1

    if-nez p1, :cond_72

    .line 155
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2_G100_ForOSUpToW()Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 156
    :cond_72
    sget p1, Lcom/transsion/camera/R$drawable;->ic_flash_snap_dark:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mIconInDescriptionId:I

    .line 157
    sget p1, Lcom/transsion/camera/R$drawable;->thum_ai_cam_flash_snap_guide:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimThumbnailId:I

    .line 158
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimResName:Ljava/lang/String;

    goto :goto_ad

    .line 162
    :cond_7d
    sget p1, Lcom/transsion/camera/R$drawable;->ic_auto_capture_guide_light:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mIconInDescriptionId:I

    .line 163
    sget p1, Lcom/transsion/camera/R$string;->motion_capture_dialog_message_new:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextId:I

    .line 164
    sget p1, Lcom/transsion/camera/R$color;->motion_capture_guide_description_text_color:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextColorId:I

    .line 165
    sget p1, Lcom/transsion/camera/R$drawable;->thum_video_motion_capture_guide:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimThumbnailId:I

    .line 166
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimResName:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2()Z

    move-result p1

    if-nez p1, :cond_a3

    .line 168
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2_G100_ForOSUpToW()Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 169
    :cond_a3
    sget p1, Lcom/transsion/camera/R$drawable;->ic_flash_snap_light:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mIconInDescriptionId:I

    .line 170
    sget p1, Lcom/transsion/camera/R$drawable;->thum_ai_cam_flash_snap_guide:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimThumbnailId:I

    .line 171
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimResName:Ljava/lang/String;

    .line 177
    :cond_ad
    :goto_ad
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    if-eqz v2, :cond_be

    .line 178
    iget v3, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextId:I

    iget v4, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDescriptionTextColorId:I

    iget v5, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mIconInDescriptionId:I

    iget v6, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimThumbnailId:I

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAnimResName:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;->setSettingResourceId(IIIILjava/lang/String;)V

    :cond_be
    return-void
.end method

.method private showFlag()Z
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x1

    .line 227
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 226
    const-string v2, "key_motioncapture_guide_show_flag"

    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 228
    sget-object v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFlag flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public initGuide()V
    .registers 4

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->isNeedShowGuide()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAICam:Z

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMasterGuideUISupport:Z

    if-nez v0, :cond_1b

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->showDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method public isGuideShowing()Z
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedShowGuide()Z
    .registers 1

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->showFlag()Z

    move-result p0

    return p0
.end method

.method public onUserInteraction()V
    .registers 3

    .line 207
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMasterGuideUISupport:Z

    if-nez v0, :cond_f

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->showDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->isGuideShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1a
    return-void
.end method

.method public pause()V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->hideDialog()V

    return-void
.end method

.method public showDialog()V
    .registers 4

    .line 75
    sget-object v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showDialog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->hideDialog()V

    .line 77
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    sget v1, Lcom/transsion/camera/R$string;->motion_capture_mode_guide_title:I

    .line 79
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->createGuideViewV2()Landroid/view/View;

    move-result-object v1

    goto :goto_2c

    :cond_26
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mAICam:Z

    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->createGuideView(Z)Landroid/view/View;

    move-result-object v1

    .line 80
    :goto_2c
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->motion_capture_dialog_btn_text:I

    new-instance v2, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI$$ExternalSyntheticLambda1;-><init>()V

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 87
    new-instance v1, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    new-instance v1, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method public unInitGuide()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->hideDialog()V

    return-void
.end method

.method public updateFlag()V
    .registers 5

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    .line 234
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 233
    const-string v3, "key_motioncapture_guide_show_flag"

    invoke-virtual {v0, v3, v2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
