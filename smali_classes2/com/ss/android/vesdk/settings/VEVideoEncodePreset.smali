.class public final enum Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ENCODE_LEVEL_FAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

.field public static final enum ENCODE_LEVEL_FASTER:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

.field public static final enum ENCODE_LEVEL_MEDIUM:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

.field public static final enum ENCODE_LEVEL_PLACEBO:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

.field public static final enum ENCODE_LEVEL_SLOW:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

.field public static final enum ENCODE_LEVEL_SLOWER:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

.field public static final enum ENCODE_LEVEL_SUPERFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

.field public static final enum ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

.field public static final enum ENCODE_LEVEL_VERYFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

.field public static final enum ENCODE_LEVEL_VERYSLOW:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 22
    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    const-string v1, "ENCODE_LEVEL_ULTRAFAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    .line 23
    new-instance v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    const-string v2, "ENCODE_LEVEL_SUPERFAST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_SUPERFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    .line 24
    new-instance v2, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    const-string v3, "ENCODE_LEVEL_VERYFAST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_VERYFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    .line 25
    new-instance v3, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    const-string v4, "ENCODE_LEVEL_FASTER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_FASTER:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    .line 26
    new-instance v4, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    const-string v5, "ENCODE_LEVEL_FAST"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_FAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    .line 27
    new-instance v5, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    const-string v6, "ENCODE_LEVEL_MEDIUM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_MEDIUM:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    .line 28
    new-instance v6, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    const-string v7, "ENCODE_LEVEL_SLOW"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_SLOW:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    .line 29
    new-instance v7, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    const-string v8, "ENCODE_LEVEL_SLOWER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_SLOWER:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    .line 30
    new-instance v8, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    const-string v9, "ENCODE_LEVEL_VERYSLOW"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_VERYSLOW:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    .line 31
    new-instance v9, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    const-string v10, "ENCODE_LEVEL_PLACEBO"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_PLACEBO:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    .line 21
    filled-new-array/range {v0 .. v9}, [Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->$VALUES:[Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    .line 43
    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;
    .registers 2

    .line 21
    const-class v0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;
    .registers 1

    .line 21
    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->$VALUES:[Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

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

    .line 35
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
