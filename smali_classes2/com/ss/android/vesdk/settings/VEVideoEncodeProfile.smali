.class public final enum Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

.field public static final enum ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

.field public static final enum ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

.field public static final enum ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 13
    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    const-string v1, "ENCODE_PROFILE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    .line 14
    new-instance v1, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    const-string v2, "ENCODE_PROFILE_BASELINE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    .line 15
    new-instance v2, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    const-string v3, "ENCODE_PROFILE_MAIN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    .line 16
    new-instance v3, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    const-string v4, "ENCODE_PROFILE_HIGH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    .line 12
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->$VALUES:[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    .line 28
    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;
    .registers 2

    .line 12
    const-class v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    return-object p0
.end method

.method public static valueOfString(Ljava/lang/String;)Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;
    .registers 3

    .line 48
    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 50
    const-string v1, "baseline"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 51
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    return-object p0

    .line 52
    :cond_13
    const-string v1, "main"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 53
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    return-object p0

    .line 54
    :cond_1e
    const-string v1, "high"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 55
    sget-object p0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    return-object p0

    :cond_29
    return-object v0
.end method

.method public static values()[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;
    .registers 1

    .line 12
    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->$VALUES:[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 20
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
