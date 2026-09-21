.class Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_ENHANCE_RESULT:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFlagTime:J

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mLastAlgorithm:I

.field private mLastEffect:I

.field private final mResources:Landroid/content/res/Resources;

.field private final mUIHandler:Landroid/os/Handler;

.field private mVideoAsdView:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$xDGXmgw4xm9XejqG7eqUI9yQtfg(Landroid/view/View;)V
    .registers 1

    .line 0
    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchImageDrawable(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;[I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->switchImageDrawable([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoAsdTopBarItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 52
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 42
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p2, -0x1

    .line 45
    iput p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mLastAlgorithm:I

    .line 46
    iput p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mLastEffect:I

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mResources:Landroid/content/res/Resources;

    .line 54
    new-instance p1, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI$UIHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private showVideoAsdHint()V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_23

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->video_asd_setting_hintmsg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_23
    return-void
.end method

.method private switchImageDrawable([I)V
    .registers 6

    const/4 v0, 0x0

    .line 163
    aget v1, p1, v0

    iput v1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mLastAlgorithm:I

    const/4 v1, 0x1

    .line 164
    aget v2, p1, v1

    iput v2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mLastEffect:I

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mFlagTime:J

    .line 166
    aget v0, p1, v0

    if-eq v0, v1, :cond_3f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2b

    .line 178
    aget p1, p1, v1

    if-ne p1, v1, :cond_23

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mVideoAsdView:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_video_asd_portrait_scene:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 181
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mVideoAsdView:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_video_asd_on:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 171
    :cond_2b
    aget p1, p1, v1

    if-ne p1, v1, :cond_37

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mVideoAsdView:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_video_asd_hdr_portrait_scene:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 174
    :cond_37
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mVideoAsdView:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_video_asd_hdr_scene:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 168
    :cond_3f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mVideoAsdView:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_video_asd_night_scene:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public doOnStatusChanged(Ljava/lang/String;)V
    .registers 3

    .line 121
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPreEntryValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 123
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->showVideoAsdHint()V

    goto :goto_28

    .line 126
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_28

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 131
    :cond_28
    :goto_28
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_30

    const/4 p1, 0x0

    .line 132
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method protected doOnValueChanged()V
    .registers 3

    .line 99
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnValueChanged()V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-nez v0, :cond_8

    return-void

    .line 103
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 104
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->showVideoAsdHint()V

    return-void

    .line 106
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public doUpdateSettingEntryView()V
    .registers 7

    .line 138
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 139
    sget-object p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "value is off, no need to update view"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->stateValue:[I

    if-eqz v0, :cond_9b

    array-length v0, v0

    if-nez v0, :cond_1d

    goto/16 :goto_9b

    .line 146
    :cond_1d
    sget-object v0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateSettingEntryView: algorithm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->stateValue:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->stateValue:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$id;->setting_ui_item_video_asd:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mVideoAsdView:Landroid/widget/ImageView;

    if-nez v1, :cond_5b

    .line 149
    const-string p0, "videoAsdView is null, return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_5b
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->stateValue:[I

    aget v2, v1, v3

    iget v3, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mLastAlgorithm:I

    const/16 v5, 0x64

    if-ne v2, v3, :cond_6b

    aget v1, v1, v4

    iget v2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mLastEffect:I

    if-eq v1, v2, :cond_90

    :cond_6b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mFlagTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_90

    .line 153
    const-string v1, "algorithm or effect is changed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mUIHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->stateValue:[I

    invoke-virtual {v0, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 158
    :cond_90
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->stateValue:[I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->switchImageDrawable([I)V

    return-void

    .line 143
    :cond_9b
    :goto_9b
    sget-object p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stateValue is invalid, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 80
    new-instance p1, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI$$ExternalSyntheticLambda0;-><init>()V

    .line 83
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 89
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 91
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdTopBarItemUI;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 94
    :cond_11
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    return-void
.end method
