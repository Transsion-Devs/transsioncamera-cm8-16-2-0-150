.class public Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFormat:I

.field private mHeight:I

.field private mIsBGOfflineEnable:Z

.field private mIsBGServiceImg:Z

.field private mIsOfflineJniEnable:Z

.field private mIsPostAlgoSurface:Z

.field private mIsPostViewSurface:Z

.field private mIsTZServiceImg:Z

.field private mName:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 11

    .line 700
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getBackgroundServiceType()Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    move-result-object v7

    .line 702
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsOfflineJniEnable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 703
    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mName:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mWidth:I

    iget v4, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mHeight:I

    invoke-direct {v0, v2, v3, v4}, Lcom/transsion/camera/app/common/bgservice/BgOfflineJniHelper;-><init>(Ljava/lang/String;II)V

    .line 704
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsBGServiceImg:Z

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setCustomEnable(ZZ)V

    :goto_1d
    move-object v8, v0

    goto :goto_7a

    .line 705
    :cond_1f
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsPostAlgoSurface:Z

    if-eqz v0, :cond_30

    .line 706
    new-instance v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLHelper;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLHelper;-><init>(Ljava/lang/String;)V

    .line 707
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsBGServiceImg:Z

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setCustomEnable(ZZ)V

    goto :goto_1d

    .line 708
    :cond_30
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsBGOfflineEnable:Z

    if-eqz v0, :cond_41

    .line 709
    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;-><init>(Ljava/lang/String;)V

    .line 710
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsBGServiceImg:Z

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setCustomEnable(ZZ)V

    goto :goto_1d

    .line 711
    :cond_41
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsTZServiceImg:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->TZ_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    if-ne v7, v0, :cond_57

    .line 712
    new-instance v0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;-><init>(Ljava/lang/String;)V

    .line 713
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsTZServiceImg:Z

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setCustomEnable(ZZ)V

    goto :goto_1d

    .line 714
    :cond_57
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsBGServiceImg:Z

    if-nez v0, :cond_6d

    sget-object v0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->BG_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    if-ne v7, v0, :cond_60

    goto :goto_6d

    .line 718
    :cond_60
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;-><init>(Ljava/lang/String;)V

    .line 719
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsBGServiceImg:Z

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setCustomEnable(ZZ)V

    goto :goto_1d

    .line 715
    :cond_6d
    :goto_6d
    new-instance v0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;-><init>(Ljava/lang/String;)V

    .line 716
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsBGServiceImg:Z

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setCustomEnable(ZZ)V

    goto :goto_1d

    .line 721
    :goto_7a
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 722
    new-instance v1, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mName:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mWidth:I

    iget v4, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mHeight:I

    iget v5, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mFormat:I

    iget-boolean v6, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsPostViewSurface:Z

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/transsion/camera/app/common/mode/CaptureSurface;-><init>(Ljava/lang/String;IIIZLcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;Lcom/transsion/camera/app/common/mode/CaptureSurface-IA;)V

    return-object v1
.end method

.method public setBGOfflineEnable(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;
    .registers 2

    .line 680
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsBGOfflineEnable:Z

    return-object p0
.end method

.method public setBGServiceImg(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;
    .registers 2

    .line 670
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsBGServiceImg:Z

    return-object p0
.end method

.method public setFormat(I)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;
    .registers 2

    .line 665
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mFormat:I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;
    .registers 2

    .line 654
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setOfflineJniEnable(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;
    .registers 2

    .line 685
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsOfflineJniEnable:Z

    return-object p0
.end method

.method public setPostAlgoSurface(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;
    .registers 2

    .line 690
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsPostAlgoSurface:Z

    return-object p0
.end method

.method public setPostViewSurface(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;
    .registers 2

    .line 695
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsPostViewSurface:Z

    return-object p0
.end method

.method public setSize(II)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;
    .registers 3

    .line 659
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mWidth:I

    .line 660
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mHeight:I

    return-object p0
.end method

.method public setTZServiceImg(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;
    .registers 2

    .line 675
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->mIsTZServiceImg:Z

    return-object p0
.end method
