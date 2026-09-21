.class public Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;
    }
.end annotation


# static fields
.field private static final KEY_ICON_SELECT_STATE:Ljava/lang/String; = "key_icon_select_state"

.field private static final KEY_PREVIEW_STATE:Ljava/lang/String; = "key_preview_state"

.field private static final KEY_SCENE_STATE:Ljava/lang/String; = "key_scene_state"

.field private static final MSG_HIDE_ICON:I = 0x2

.field private static final MSG_SHOW_ICON:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mClosedByLivePhoto:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mExclusiveUIShowing:Z

.field private final mGroupCaptureDataCallback:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;

.field protected mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mImageStyleShow:Z

.field private mIsCelebritySceneShow:Z

.field private mIsFilterShowing:Z

.field private mIsFirstFrameDrawn:Z

.field private mIsIconSelected:Z

.field private mIsPMasterBottomUIShowing:Z

.field private mIsPopSettingShow:Z

.field private mIsRingScreenLightOn:Z

.field private mIsZoomWheelUIShowing:Z

.field private mLivePhotoChangedByUserInteraction:Z

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;


# direct methods
.method public static synthetic $r8$lambda$4pes9Upw12Aylz08142GuIw0Kno(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->lambda$new$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZmvvNYovzk3gWxe5R8umbMb-6iQ(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->lambda$createEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_4FLqvOx1xV7Eox2A6jomAHjNLk(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->lambda$new$1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsIconSelected(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsFirstFrameDrawn(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsFirstFrameDrawn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsIconSelected(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mpersistIconState(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->persistIconState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateIconDrawable(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateIconDrawable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsFirstFrameDrawn:Z

    .line 174
    new-instance v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 228
    new-instance v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 82
    new-instance v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;

    .line 83
    new-instance v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;-><init>(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureDataCallback:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;

    return-void
.end method

.method private getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 7

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->full_zoom_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->group_capture_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 328
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->getGroupCaptureIconMargins(II)Landroid/graphics/Rect;

    move-result-object v2

    .line 329
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 330
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->group_capture_icon_margin_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 329
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v3

    .line 332
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 333
    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v4

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v4, p0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    .line 332
    invoke-static {v2, v4}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result p0

    .line 337
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x55

    .line 338
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 339
    invoke-virtual {v0, v1, v1, v3, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private synthetic lambda$createEntryView$0(Landroid/view/View;)V
    .registers 3

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_37

    .line 145
    :cond_9
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    if-eqz p1, :cond_e

    goto :goto_37

    .line 148
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateGroupIconState()V

    .line 149
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-eqz p1, :cond_37

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_1e

    goto :goto_37

    .line 153
    :cond_1e
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    const-string v0, "key_group_capture_switch_state"

    if-eqz p0, :cond_2e

    .line 154
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_group_capture_switch_on"

    .line 155
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_2e
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_group_capture_switch_off"

    .line 158
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_37
    :goto_37
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 175
    const-string v0, "key_live_photo"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "on"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_73

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 177
    const-string p1, "off"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 178
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mClosedByLivePhoto:Z

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_37

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 180
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    .line 181
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateIconDrawable()V

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->persistIconState()V

    .line 185
    :cond_37
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mLivePhotoChangedByUserInteraction:Z

    return-void

    .line 188
    :cond_3a
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 191
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mClosedByLivePhoto:Z

    .line 192
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    if-eqz v0, :cond_52

    goto :goto_b6

    .line 195
    :cond_52
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateGroupIconState()V

    goto :goto_71

    .line 198
    :cond_56
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mLivePhotoChangedByUserInteraction:Z

    if-nez v0, :cond_5b

    goto :goto_b6

    .line 201
    :cond_5b
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mClosedByLivePhoto:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_71

    .line 202
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mClosedByLivePhoto:Z

    .line 203
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    if-eqz v0, :cond_6e

    goto :goto_b6

    .line 206
    :cond_6e
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateGroupIconState()V

    .line 209
    :cond_71
    :goto_71
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mLivePhotoChangedByUserInteraction:Z

    .line 212
    :cond_73
    const-string v0, "key_live_photo_switch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 213
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mLivePhotoChangedByUserInteraction:Z

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_b6

    check-cast p2, Ljava/lang/CharSequence;

    const-string p1, "value_live_photo_interaction_on"

    .line 215
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b6

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 216
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b6

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    if-eqz p1, :cond_b6

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 219
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mClosedByLivePhoto:Z

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 221
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    .line 222
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateIconDrawable()V

    .line 223
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->persistIconState()V

    :cond_b6
    :goto_b6
    return-void
.end method

.method private synthetic lambda$new$2(Z)V
    .registers 5

    .line 229
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsRingScreenLightOn:Z

    if-eq v0, p1, :cond_1f

    .line 230
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsRingScreenLightOn:Z

    .line 231
    sget-object v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransfer, mIsRingScreenLightOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateIconDrawable()V

    :cond_1f
    return-void
.end method

.method private persistIconState()V
    .registers 6

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 270
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    if-eqz v1, :cond_d

    const-string v1, "on"

    goto :goto_f

    :cond_d
    const-string v1, "off"

    :goto_f
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 271
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 269
    const-string v4, "key_group_capture_icon_state"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    return-void
.end method

.method private updateGroupIconState()V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    .line 169
    sget-object v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCreateEntryView, onClick, isSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateIconDrawable()V

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->persistIconState()V

    return-void
.end method

.method private updateIconDrawable()V
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_5

    return-void

    .line 255
    :cond_5
    sget-object v0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIconDrawable, mIsRingScreenLightOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsRingScreenLightOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsIconSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 256
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 258
    sget p0, Lcom/transsion/camera/R$drawable;->group_capture_icon_on:I

    goto :goto_49

    .line 259
    :cond_40
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsRingScreenLightOn:Z

    if-eqz p0, :cond_47

    sget p0, Lcom/transsion/camera/R$drawable;->group_capture_icon_off_inverse:I

    goto :goto_49

    .line 260
    :cond_47
    sget p0, Lcom/transsion/camera/R$drawable;->group_capture_icon_off:I

    .line 257
    :goto_49
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 130
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 131
    new-instance p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 132
    sget p2, Lcom/transsion/camera/R$id;->capture_group_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 134
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateIconDrawable()V

    .line 135
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    .line 136
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsIconSelected:Z

    if-eqz p2, :cond_27

    const-string p2, "on"

    goto :goto_29

    :cond_27
    const-string p2, "off"

    :goto_29
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 137
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p3

    .line 135
    const-string v0, "key_group_capture_icon_state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p1, p2, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 140
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateGroupCaptureIconLayout()V

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance p2, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getGroupCaptureIconMargins(II)Landroid/graphics/Rect;
    .registers 3

    .line 352
    new-instance p0, Landroid/graphics/Rect;

    const p1, 0x7fffffff

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 370
    const-string p0, "key_group_capture"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 378
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->hideIcon(Z)V

    return-void
.end method

.method protected hideIcon(Z)V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_33

    .line 305
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_13

    const/16 v1, 0x14e

    .line 307
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 309
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_1a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-eqz v0, :cond_33

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_33

    if-eqz p1, :cond_33

    .line 313
    const-string p1, "key_group_capture_switch_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_group_capture_switch_off"

    .line 314
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_33
    return-void
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 239
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsRingScreenLightOn:Z

    .line 240
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 241
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->updateIconDrawable()V

    .line 242
    sget-object p1, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initSettingUI, mIsRingScreenLightOn:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsRingScreenLightOn:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mImageStyleShow:Z

    if-nez p1, :cond_48

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsFilterShowing:Z

    if-nez p1, :cond_48

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_48

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_48

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsZoomWheelUIShowing:Z

    if-nez p1, :cond_48

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 246
    :cond_48
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsPopSettingShow:Z

    if-eqz p1, :cond_53

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    if-nez p1, :cond_53

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    :cond_53
    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_b0

    goto/16 :goto_a9

    .line 468
    :sswitch_7
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsCelebritySceneShow:Z

    .line 469
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    return-void

    .line 463
    :sswitch_c
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsCelebritySceneShow:Z

    .line 464
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 465
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->hideIcon(Z)V

    return-void

    .line 525
    :sswitch_14
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void

    .line 521
    :sswitch_1c
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->hideIcon(Z)V

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void

    .line 497
    :sswitch_27
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 498
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsPMasterBottomUIShowing:Z

    return-void

    .line 492
    :sswitch_2c
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsPMasterBottomUIShowing:Z

    .line 493
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 494
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->hideIcon(Z)V

    return-void

    .line 477
    :sswitch_34
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mImageStyleShow:Z

    .line 478
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsFilterShowing:Z

    if-nez p1, :cond_a9

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_a9

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_a9

    .line 479
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    return-void

    .line 472
    :sswitch_45
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 473
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mImageStyleShow:Z

    .line 474
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->hideIcon(Z)V

    return-void

    .line 488
    :sswitch_4d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 489
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsPopSettingShow:Z

    return-void

    .line 483
    :sswitch_52
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsPopSettingShow:Z

    .line 484
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 485
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->hideIcon(Z)V

    return-void

    .line 528
    :sswitch_5a
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsFirstFrameDrawn:Z

    return-void

    .line 459
    :sswitch_5d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsFilterShowing:Z

    .line 460
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    return-void

    .line 450
    :sswitch_62
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsFilterShowing:Z

    .line 451
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 452
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->hideIcon(Z)V

    return-void

    .line 518
    :sswitch_6a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 510
    :sswitch_70
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 511
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mImageStyleShow:Z

    .line 512
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mClosedByLivePhoto:Z

    return-void

    .line 506
    :sswitch_77
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsZoomWheelUIShowing:Z

    .line 507
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    return-void

    .line 501
    :sswitch_7c
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsZoomWheelUIShowing:Z

    .line 502
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 503
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->hideIcon(Z)V

    return-void

    .line 455
    :sswitch_84
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mClosedByLivePhoto:Z

    .line 456
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mLivePhotoChangedByUserInteraction:Z

    return-void

    .line 515
    :sswitch_89
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 440
    :sswitch_8f
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsFilterShowing:Z

    if-nez p1, :cond_a9

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mImageStyleShow:Z

    if-nez p1, :cond_a9

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_a9

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_a9

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsPMasterBottomUIShowing:Z

    if-nez p1, :cond_a9

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsZoomWheelUIShowing:Z

    if-nez p1, :cond_a9

    .line 446
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    :cond_a9
    :goto_a9
    return-void

    .line 432
    :sswitch_aa
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    .line 433
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->hideIcon(Z)V

    return-void

    :sswitch_data_b0
    .sparse-switch
        0xb -> :sswitch_aa
        0xc -> :sswitch_8f
        0xd -> :sswitch_89
        0x13 -> :sswitch_84
        0x19 -> :sswitch_7c
        0x1a -> :sswitch_77
        0x1c -> :sswitch_70
        0x1f -> :sswitch_6a
        0x30 -> :sswitch_62
        0x31 -> :sswitch_5d
        0x63 -> :sswitch_5a
        0xcf -> :sswitch_52
        0xd0 -> :sswitch_4d
        0xd2 -> :sswitch_aa
        0xd3 -> :sswitch_8f
        0xe9 -> :sswitch_aa
        0xea -> :sswitch_8f
        0xed -> :sswitch_aa
        0xee -> :sswitch_8f
        0xf2 -> :sswitch_45
        0xf3 -> :sswitch_34
        0xf7 -> :sswitch_2c
        0xf8 -> :sswitch_27
        0x115 -> :sswitch_1c
        0x116 -> :sswitch_14
        0x16b -> :sswitch_aa
        0x16c -> :sswitch_8f
        0x183 -> :sswitch_c
        0x184 -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 357
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    .line 359
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_b
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
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 384
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureDataCallback:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$GroupCaptureDataCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

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

    .line 537
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_14

    .line 539
    const-string v0, "key_live_photo"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 540
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_live_photo_switch"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_14
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method protected showIcon()V
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_51

    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    .line 283
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsFirstFrameDrawn:Z

    if-eqz v0, :cond_51

    .line 285
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mExclusiveUIShowing:Z

    if-nez v0, :cond_2f

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_24

    const/16 v2, 0x14d

    .line 287
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 289
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 292
    :cond_2f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-eqz v0, :cond_51

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 294
    const-string v0, "value_group_capture_switch_on"

    goto :goto_44

    :cond_42
    const-string v0, "value_group_capture_switch_off"

    .line 295
    :goto_44
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_51

    .line 296
    const-string v1, "key_group_capture_switch_state"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 297
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_51
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 546
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_17

    .line 548
    const-string v1, "key_live_photo"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_live_photo_switch"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 551
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 553
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    const/4 v0, 0x0

    .line 554
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mIsRingScreenLightOn:Z

    .line 555
    sget-object p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected updateGroupCaptureIconLayout()V
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->mGroupCaptureIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_5

    return-void

    .line 347
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
