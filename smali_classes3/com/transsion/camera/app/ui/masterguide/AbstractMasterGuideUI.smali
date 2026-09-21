.class public abstract Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mDescriptions:[Ljava/lang/String;

.field protected mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mIsLowLight:Z

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

.field protected mPath:Ljava/lang/String;

.field protected mRatio:Ljava/lang/String;

.field protected mRootView:Landroid/view/View;

.field protected mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field protected mTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mIsLowLight:Z

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 46
    iput-object p3, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 47
    iput-object p4, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    .line 48
    iput-object p5, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method protected static typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 151
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 152
    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_1d

    .line 155
    invoke-virtual {p0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 156
    invoke-static {v4}, Lcom/transsion/camera/utils/ResCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_18

    .line 158
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 160
    :cond_18
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1d
    return-object v1
.end method


# virtual methods
.method public getGuideViewVisibility()I
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mRootView:Landroid/view/View;

    if-eqz p0, :cond_9

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0

    :cond_9
    const/16 p0, 0x8

    return p0
.end method

.method public hideGuideView()V
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mRootView:Landroid/view/View;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .line 53
    iput-object p3, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 p0, 0x0

    return-object p0
.end method

.method public initGuideUIData(Lcom/transsion/camera/app/common/MasterGuideUIBean;)V
    .registers 3

    .line 59
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getDrawables()Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 60
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getDrawables()Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 62
    :cond_10
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 63
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mPath:Ljava/lang/String;

    .line 65
    :cond_1c
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getTitles()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 66
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getTitles()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mTitles:[Ljava/lang/String;

    .line 68
    :cond_28
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getDescriptions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 69
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getDescriptions()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDescriptions:[Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, " key_gesture_guide_ui "

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDescriptions:[Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$string;->asd_gesture_master_guide_ui_description:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p1, v0

    :cond_51
    return-void
.end method

.method public isFullSizeRatio(Ljava/lang/String;)Z
    .registers 6

    if-nez p1, :cond_10

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string p1, "4:3"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_picture_ratio"

    invoke-virtual {p0, v1, p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    :cond_10
    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 112
    array-length p1, p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1c

    return v1

    .line 116
    :cond_1c
    :try_start_1c
    aget-object p1, p0, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/4 v0, 0x1

    .line 117
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-nez v2, :cond_2f

    return v1

    :cond_2f
    div-float/2addr p1, p0

    .line 122
    new-instance p0, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {p0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v2, p1

    .line 123
    invoke-virtual {p0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_46} :catch_4a

    if-ltz p0, :cond_49

    return v0

    :cond_49
    return v1

    :catch_4a
    move-exception p0

    .line 125
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input number format error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1
.end method

.method public resetFlag(Ljava/lang/String;)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setCurrentPictureRatio(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mRatio:Ljava/lang/String;

    return-void
.end method

.method public showFlag(Ljava/lang/String;)Z
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x1

    .line 133
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateFlag(Ljava/lang/String;)V
    .registers 5

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
