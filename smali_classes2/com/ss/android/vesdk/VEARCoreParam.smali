.class public Lcom/ss/android/vesdk/VEARCoreParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEARCoreParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enableARCore:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/ss/android/vesdk/VEARCoreParam$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEARCoreParam$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEARCoreParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEARCoreParam;->enableARCore:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEARCoreParam;->enableARCore:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEARCoreParam;->enableARCore:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isEnableARCore()Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEARCoreParam;->enableARCore:Z

    return p0
.end method

.method public setEnableARCore(Z)V
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEARCoreParam;->enableARCore:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 42
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEARCoreParam;->enableARCore:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
