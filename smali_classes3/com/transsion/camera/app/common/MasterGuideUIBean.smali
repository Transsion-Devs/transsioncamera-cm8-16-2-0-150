.class public Lcom/transsion/camera/app/common/MasterGuideUIBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBottomMargin:I

.field private mDescriptions:[Ljava/lang/String;

.field private mDrawables:Landroid/content/res/TypedArray;

.field private mLeftMargin:I

.field private mPath:Ljava/lang/String;

.field private mTitles:[Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mBottomMargin:I

    return p0
.end method

.method public getDescriptions()[Ljava/lang/String;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mDescriptions:[Ljava/lang/String;

    return-object p0
.end method

.method public getDrawables()Landroid/content/res/TypedArray;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mDrawables:Landroid/content/res/TypedArray;

    return-object p0
.end method

.method public getLeftMargin()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mLeftMargin:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getTitles()[Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mTitles:[Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public setBottomMargin(I)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mBottomMargin:I

    return-void
.end method

.method public setDescription([Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mDescriptions:[Ljava/lang/String;

    return-void
.end method

.method public setDrawable(Landroid/content/res/TypedArray;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mDrawables:Landroid/content/res/TypedArray;

    return-void
.end method

.method public setLeftMargin(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mLeftMargin:I

    return-void
.end method

.method public setTitles([Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mTitles:[Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/common/MasterGuideUIBean;->mType:Ljava/lang/String;

    return-void
.end method
