.class public Lcom/transsion/campostalgo/FeaturePipeConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/campostalgo/FeaturePipeConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlgos:[I

.field public mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lcom/transsion/campostalgo/FeaturePipeConfig$1;

    invoke-direct {v0}, Lcom/transsion/campostalgo/FeaturePipeConfig$1;-><init>()V

    sput-object v0, Lcom/transsion/campostalgo/FeaturePipeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 2

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 112
    iget p2, p0, Lcom/transsion/campostalgo/FeaturePipeConfig;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object p0, p0, Lcom/transsion/campostalgo/FeaturePipeConfig;->mAlgos:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
