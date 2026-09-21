.class public Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static KEY_VIDE_PORTRAIT_LAST_VALUE:Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentValue:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsPortraitOn:Z

.field private mPortraitIcon:Landroid/widget/ImageView;

.field private mPortraitLevelMap:Ljava/util/HashMap;

.field private mSeekBar:Lcom/transsion/camera/app/ui/widget/GraduationView;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsPortraitOn(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mIsPortraitOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPortraitIcon(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mPortraitIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPortraitLevelMap(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mPortraitLevelMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoPortraitSetting(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentValue(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$monPortraitButtonSwitch(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->onPortraitButtonSwitch(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenPortraitBySeekBar(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->openPortraitBySeekBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoPortraitLayout"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 44
    const-string v0, "last_video_portrait_value"

    sput-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->KEY_VIDE_PORTRAIT_LAST_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 51
    new-instance p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mPortraitLevelMap:Ljava/util/HashMap;

    return-void
.end method

.method private onPortraitButtonSwitch(Z)V
    .registers 9

    .line 129
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPortraitButtonSwitch, cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", turnOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mIsPortraitOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mIsPortraitOn:Z

    if-ne v1, p1, :cond_33

    return-void

    .line 133
    :cond_33
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mIsPortraitOn:Z

    .line 135
    const-string v1, "key_video_portrait_ui"

    if-eqz p1, :cond_97

    .line 136
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    sget-object v5, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->KEY_VIDE_PORTRAIT_LAST_VALUE:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    :cond_49
    move-object v3, v4

    :goto_4a
    if-nez v3, :cond_4d

    goto :goto_4e

    :cond_4d
    move-object v4, v3

    :goto_4e
    if-eqz v4, :cond_58

    .line 138
    const-string v5, "null"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_62

    :cond_58
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mPortraitLevelMap:Ljava/util/HashMap;

    const-string v5, "f4.0"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 139
    :cond_62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBlurButtonSwitch,value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mSeekBar:Lcom/transsion/camera/app/ui/widget/GraduationView;

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->VIDEO_PORTRAIT_DATA:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(I)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ba

    .line 143
    :cond_97
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v0, :cond_a7

    .line 144
    sget-object v2, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->KEY_VIDE_PORTRAIT_LAST_VALUE:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    :cond_a7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mSeekBar:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(I)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "0"

    .line 150
    :goto_ba
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mPortraitIcon:Landroid/widget/ImageView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    sget v1, Lcom/transsion/camera/R$string;->close_video_portrait_title:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_d5

    .line 155
    sget p1, Lcom/transsion/camera/app/common/R$string;->setting_on_entry_value:I

    goto :goto_d7

    .line 156
    :cond_d5
    sget p1, Lcom/transsion/camera/app/common/R$string;->setting_off_entry_value:I

    .line 154
    :goto_d7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mPortraitIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 158
    iput-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mCurrentValue:Ljava/lang/String;

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mVideoPortraitSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private openPortraitBySeekBar()V
    .registers 5

    .line 119
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openPortraitBySeekBar, mIsBlurOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mIsPortraitOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mIsPortraitOn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    return-void

    .line 123
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_video_portrait_ui"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mIsPortraitOn:Z

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mPortraitIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 4

    .line 71
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 72
    sget v0, Lcom/transsion/camera/R$id;->video_portrait_blur_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mPortraitIcon:Landroid/widget/ImageView;

    .line 73
    sget v0, Lcom/transsion/camera/R$id;->video_portrait_blur_seekbar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/GraduationView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mSeekBar:Lcom/transsion/camera/app/ui/widget/GraduationView;

    .line 74
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCursorTitleContents([Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mSeekBar:Lcom/transsion/camera/app/ui/widget/GraduationView;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCursorMoveCount(I)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mSeekBar:Lcom/transsion/camera/app/ui/widget/GraduationView;

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PMASTER_BLUR:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setStyle(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mPortraitIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$2;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    sget v1, Lcom/transsion/camera/R$string;->close_video_portrait_title:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mIsPortraitOn:Z

    if-eqz v1, :cond_4a

    .line 91
    sget v1, Lcom/transsion/camera/app/common/R$string;->setting_on_entry_value:I

    goto :goto_4c

    .line 92
    :cond_4a
    sget v1, Lcom/transsion/camera/app/common/R$string;->setting_off_entry_value:I

    .line 90
    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mPortraitIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mSeekBar:Lcom/transsion/camera/app/ui/widget/GraduationView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$3;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setOnProgressChangeListener(Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method
