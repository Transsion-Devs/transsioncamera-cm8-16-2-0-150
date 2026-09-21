.class public Lcom/transsion/camera/app/ui/PreviewStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;,
        Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;,
        Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;,
        Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;,
        Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;,
        Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final DEFAULT_MODE_TYPE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

.field private mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mInit:Z

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mModeTypePhoto:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

.field private final mModeTypeVideo:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

.field private mPreviewStyle:Ljava/lang/String;

.field private mPreviewView:Landroid/view/View;

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mVideoModes:[Ljava/lang/String;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentModeType(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterpolator(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/animation/PathInterpolator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeTypeListener(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewStyle(Lcom/transsion/camera/app/ui/PreviewStyle;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mPreviewStyle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewStyleListener(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mPreviewView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenManager(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/ScreenManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewWidth(Lcom/transsion/camera/app/ui/PreviewStyle;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentModeType(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewStyle(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mPreviewStyle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreviewStyle"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/PreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 8

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 80
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 81
    new-instance p2, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$array;->video_mode_category:I

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mVideoModes:[Ljava/lang/String;

    .line 85
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mModeTypePhoto:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    .line 86
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mModeTypeVideo:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->DEFAULT_MODE_TYPE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    return-void
.end method

.method private isVideoMode(Ljava/lang/String;)Z
    .registers 2

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mVideoModes:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public changeStyle()V
    .registers 2

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    if-nez p0, :cond_c

    .line 125
    sget-object p0, Lcom/transsion/camera/app/ui/PreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "changeStyle, mCurrentModeType is null!!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_c
    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->-$$Nest$mchangeStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V

    return-void
.end method

.method public currentStyle()I
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    const/4 v1, -0x1

    if-nez v0, :cond_d

    .line 133
    sget-object p0, Lcom/transsion/camera/app/ui/PreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "currentStyle mCurrentModeType is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 136
    :cond_d
    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->-$$Nest$fgetmCurrentStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 137
    sget-object p0, Lcom/transsion/camera/app/ui/PreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "currentStyle mCurrentStyle is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 140
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->-$$Nest$fgetmCurrentStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->-$$Nest$mstyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public setModeTypeListener(Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;)V
    .registers 2

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 4

    .line 109
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mInit:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mInit:Z

    .line 111
    iput p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewWidth:I

    .line 112
    iput p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewHeight:I

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->DEFAULT_MODE_TYPE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->entry()V

    return-void

    .line 115
    :cond_11
    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewWidth:I

    if-ne p1, v0, :cond_1b

    iget v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewHeight:I

    if-eq p2, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    return-void

    .line 116
    :cond_1b
    :goto_1b
    iput p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewWidth:I

    .line 117
    iput p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mViewHeight:I

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mCurrentModeType:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->-$$Nest$msizeChanged(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V

    return-void
.end method

.method public setPreviewStyleListener(Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;)V
    .registers 2

    return-void
.end method

.method public setPreviewView(Landroid/view/View;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mPreviewView:Landroid/view/View;

    return-void
.end method

.method public switchMode(Ljava/lang/String;)V
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle;->isVideoMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mModeTypeVideo:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->entry()V

    return-void

    .line 147
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle;->mModeTypePhoto:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->entry()V

    return-void
.end method
