.class public final enum Lcom/ss/android/vesdk/ROTATE_DEGREE;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/ROTATE_DEGREE;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/ROTATE_DEGREE;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ROTATE_180:Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final enum ROTATE_270:Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final enum ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final enum ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 15
    new-instance v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const-string v1, "ROTATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 19
    new-instance v1, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const-string v2, "ROTATE_90"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 23
    new-instance v2, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const-string v3, "ROTATE_180"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_180:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 27
    new-instance v3, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const-string v4, "ROTATE_270"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_270:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 11
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/vesdk/ROTATE_DEGREE;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->$VALUES:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 56
    new-instance v0, Lcom/ss/android/vesdk/ROTATE_DEGREE$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/ROTATE_DEGREE$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toIntArray([Lcom/ss/android/vesdk/ROTATE_DEGREE;)[I
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_4
    array-length v0, p0

    .line 34
    array-length v1, p0

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v0, :cond_1c

    .line 37
    aget-object v4, p0, v3

    if-nez v4, :cond_13

    .line 38
    aput v2, v1, v3

    goto :goto_19

    .line 41
    :cond_13
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v4, v1, v3

    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1c
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/ROTATE_DEGREE;
    .registers 2

    .line 11
    const-class v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/ROTATE_DEGREE;
    .registers 1

    .line 11
    sget-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->$VALUES:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/ROTATE_DEGREE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/ROTATE_DEGREE;

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

    .line 53
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
