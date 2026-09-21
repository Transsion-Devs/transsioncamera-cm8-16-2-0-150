.class public Lcom/transsion/hubsdk/api/app/TranNotificationRanking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/api/app/TranNotificationRanking;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsTranForceAppGroup:Z

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/app/TranNotificationRanking$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mPackageName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mUid:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mIsTranForceAppGroup:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mPackageName:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mUid:I

    .line 30
    iput-boolean p3, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mIsTranForceAppGroup:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 92
    iget p0, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mUid:I

    return p0
.end method

.method public isForceAppGroup()Z
    .registers 1

    .line 99
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mIsTranForceAppGroup:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranNotificationRanking{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsTranForceAppGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mIsTranForceAppGroup:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 50
    iget-object p2, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget p2, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/app/TranNotificationRanking;->mIsTranForceAppGroup:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
