.class public final enum Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEVideoEncodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VEVideoEncodeFitMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

.field public static final enum CENTER_CROP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

.field public static final enum CENTER_INSIDE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NONE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 304
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->NONE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    .line 305
    new-instance v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    const-string v2, "CENTER_INSIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->CENTER_INSIDE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    .line 306
    new-instance v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    const-string v3, "CENTER_CROP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->CENTER_CROP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    .line 303
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->$VALUES:[Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    .line 318
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;
    .registers 2

    .line 303
    const-class v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;
    .registers 1

    .line 303
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->$VALUES:[Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

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

    .line 315
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
