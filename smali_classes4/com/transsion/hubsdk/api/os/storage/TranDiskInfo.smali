.class public Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_ADOPTABLE:I = 0x1

.field public static final FLAG_DEFAULT_PRIMARY:I = 0x2

.field public static final FLAG_SD:I = 0x4

.field public static final FLAG_STUB_VISIBLE:I = 0x40

.field public static final FLAG_USB:I = 0x8


# instance fields
.field public final mFlags:I

.field public final mId:Ljava/lang/String;

.field public mLabel:Ljava/lang/String;

.field public mSize:J

.field public mSysPath:Ljava/lang/String;

.field public mVolumeCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;->mId:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;->mFlags:I

    return-void
.end method


# virtual methods
.method public isSd()Z
    .registers 1

    .line 33
    iget p0, p0, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isUsb()Z
    .registers 1

    .line 37
    iget p0, p0, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
