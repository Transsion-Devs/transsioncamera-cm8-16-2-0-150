.class public Lcom/transsion/campostalgo/FeatureConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/campostalgo/FeatureConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInterfaceParam:Lcom/transsion/campostalgo/FeatureParam;

.field private mPipeConfigSet:Lcom/transsion/campostalgo/FeaturePipeConfig;

.field private mStreamInfoSet:Ljava/util/ArrayList;

.field private mSurfaceSet:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Lcom/transsion/campostalgo/FeatureConfig$1;

    invoke-direct {v0}, Lcom/transsion/campostalgo/FeatureConfig$1;-><init>()V

    sput-object v0, Lcom/transsion/campostalgo/FeatureConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/transsion/campostalgo/FeaturePipeConfig;

    invoke-direct {v0}, Lcom/transsion/campostalgo/FeaturePipeConfig;-><init>()V

    iput-object v0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mPipeConfigSet:Lcom/transsion/campostalgo/FeaturePipeConfig;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mSurfaceSet:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mStreamInfoSet:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lcom/transsion/campostalgo/FeatureParam;

    invoke-direct {v0}, Lcom/transsion/campostalgo/FeatureParam;-><init>()V

    iput-object v0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mInterfaceParam:Lcom/transsion/campostalgo/FeatureParam;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/campostalgo/FeatureConfig;Landroid/os/Parcel;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/campostalgo/FeatureConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 114
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mPipeConfigSet:Lcom/transsion/campostalgo/FeaturePipeConfig;

    invoke-virtual {v0, p1}, Lcom/transsion/campostalgo/FeaturePipeConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mSurfaceSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    const-class v0, Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 118
    array-length v2, v0

    move v3, v1

    :goto_19
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 119
    check-cast v4, Landroid/view/Surface;

    .line 120
    iget-object v5, p0, Lcom/transsion/campostalgo/FeatureConfig;->mSurfaceSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 123
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readFromParcel size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/campostalgo/FeatureConfig;->mSurfaceSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FeatureConfig"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mStreamInfoSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    const-class v0, Lcom/transsion/campostalgo/StreamInfo;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 128
    array-length v4, v0

    :goto_55
    if-ge v1, v4, :cond_63

    aget-object v5, v0, v1

    .line 129
    check-cast v5, Lcom/transsion/campostalgo/StreamInfo;

    .line 130
    iget-object v6, p0, Lcom/transsion/campostalgo/FeatureConfig;->mStreamInfoSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 133
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/campostalgo/FeatureConfig;->mStreamInfoSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mInterfaceParam:Lcom/transsion/campostalgo/FeatureParam;

    invoke-virtual {p0, p1}, Lcom/transsion/campostalgo/FeatureParam;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addInterfaceParams(Lcom/transsion/campostalgo/FeatureParam;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/transsion/campostalgo/FeatureConfig;->mInterfaceParam:Lcom/transsion/campostalgo/FeatureParam;

    return-void
.end method

.method public addSurface(Ljava/util/List;)V
    .registers 4

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSurface size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mSurfaceSet:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mPipeConfigSet:Lcom/transsion/campostalgo/FeaturePipeConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mSurfaceSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Surface;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 101
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mStreamInfoSet:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/transsion/campostalgo/StreamInfo;

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/campostalgo/StreamInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 103
    iget-object p0, p0, Lcom/transsion/campostalgo/FeatureConfig;->mInterfaceParam:Lcom/transsion/campostalgo/FeatureParam;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    const-string p0, "FeatureConfig"

    const-string p1, "writeToParcel done!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
