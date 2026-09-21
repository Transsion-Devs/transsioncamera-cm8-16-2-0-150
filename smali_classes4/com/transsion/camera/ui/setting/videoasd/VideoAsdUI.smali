.class public Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$EnhanceResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_ENHANCE_RESULT:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsMacroEnable:Z

.field private mIsWideCamera:Z

.field private final mResources:Landroid/content/res/Resources;

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;

.field private mVideoRecorderState:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsMacroEnable(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mIsMacroEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoRecorderState(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mVideoRecorderState:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckVideoRecordStart(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->checkVideoRecordStart()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoUpdateAsdResult(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;[II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->doUpdateAsdResult([II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideAsdResult(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->hideAsdResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoEnhanceUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    .line 64
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 57
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 58
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 60
    new-instance v0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;

    .line 61
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mIsMacroEnable:Z

    .line 62
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mIsWideCamera:Z

    .line 278
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mVideoRecorderState:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mResources:Landroid/content/res/Resources;

    .line 66
    new-instance p1, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;

    return-void
.end method

.method private checkVideoRecordStart()Z
    .registers 2

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mVideoRecorderState:Ljava/lang/String;

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private checkWideMacroEnable()Z
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_macro"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mIsMacroEnable:Z

    .line 286
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mIsWideCamera:Z

    if-eqz p0, :cond_18

    if-eqz v0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private doUpdateAsdResult([II)V
    .registers 12

    .line 163
    sget-object v0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateAsdResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_165

    .line 164
    array-length v1, p1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2a

    goto/16 :goto_165

    :cond_2a
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p2, v5, :cond_8c

    .line 173
    aget p2, p1, v1

    .line 174
    aget v6, p1, v5

    if-eq p2, v5, :cond_60

    if-eq p2, v3, :cond_3b

    move v7, v1

    move-object p2, v4

    move-object v3, p2

    goto :goto_71

    .line 182
    :cond_3b
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$drawable;->ic_asd_hdr:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 183
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v7, "Itel"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 184
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$string;->asd_result_algorithm_hdr:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5e

    .line 186
    :cond_56
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$string;->asd_result_algorithm_backlight:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_5e
    move v7, v5

    goto :goto_71

    .line 177
    :cond_60
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$drawable;->ic_asd_night:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 178
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$string;->asd_dynamic_night:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5e

    :goto_71
    if-ne v6, v5, :cond_88

    .line 195
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$drawable;->ic_asd_portrait:I

    invoke-virtual {v6, v7, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 196
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$string;->asd_dynamic_portrait:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    move v7, v5

    goto :goto_90

    :cond_88
    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_90

    :cond_8c
    move v7, v1

    move-object p2, v4

    move-object v3, p2

    move-object v6, v3

    .line 200
    :goto_90
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->checkWideMacroEnable()Z

    move-result v8

    if-nez v8, :cond_9c

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->checkVideoRecordStart()Z

    move-result v8

    if-eqz v8, :cond_9d

    :cond_9c
    move v7, v1

    :cond_9d
    if-eqz v7, :cond_162

    .line 204
    iget-object v7, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v7, :cond_165

    .line 205
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v7, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 206
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v7, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v7, v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 208
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v7, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_bb

    if-nez p2, :cond_bf

    :cond_bb
    if-eqz v6, :cond_ca

    if-eqz v3, :cond_ca

    .line 210
    :cond_bf
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v5}, Lcom/transsion/camera/app/common/ui/HintInfo;->setIsAsdDynamic(Z)V

    .line 211
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    goto :goto_cf

    .line 213
    :cond_ca
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setIsAsdDynamic(Z)V

    .line 215
    :goto_cf
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result p1

    if-eqz p1, :cond_12e

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-ne p1, p2, :cond_12e

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12e

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-ne p1, p2, :cond_12e

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12e

    goto :goto_165

    .line 220
    :cond_12e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 227
    :cond_162
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->hideAsdResult()V

    :cond_165
    :goto_165
    return-void
.end method

.method private hideAsdResult()V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_3a

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mCurrentVideoAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_3a
    return-void
.end method

.method private registerListenerToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterListenerToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
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

    .line 106
    const-string p0, "key_video_asd"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_6
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

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

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

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 122
    sget-object p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_c
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mIsWideCamera:Z

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$EnhanceResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$EnhanceResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_3d

    .line 129
    const-string p1, "key_macro_status"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->registerListenerToMonitor(Ljava/lang/String;)V

    .line 130
    const-string p1, "key_record_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->registerListenerToMonitor(Ljava/lang/String;)V

    :cond_3d
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
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_7

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->hideAsdResult()V

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1b

    .line 146
    const-string v0, "key_macro_status"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->unRegisterListenerToMonitor(Ljava/lang/String;)V

    .line 147
    const-string v0, "key_record_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoasd/VideoAsdUI;->unRegisterListenerToMonitor(Ljava/lang/String;)V

    .line 149
    :cond_1b
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
