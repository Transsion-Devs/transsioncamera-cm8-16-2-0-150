.class public final enum Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/util/VEPlatformUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VEPlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PLATFORM_EXYNOS:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

.field public static final enum PLATFORM_HISI:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

.field public static final enum PLATFORM_MTK:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

.field public static final enum PLATFORM_QCOM:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

.field public static final enum PLATFORM_UNKNOWN:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 15
    new-instance v0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    const-string v1, "PLATFORM_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->PLATFORM_UNKNOWN:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    .line 16
    new-instance v1, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    const-string v2, "PLATFORM_QCOM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->PLATFORM_QCOM:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    .line 17
    new-instance v2, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    const-string v3, "PLATFORM_MTK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->PLATFORM_MTK:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    .line 18
    new-instance v3, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    const-string v4, "PLATFORM_HISI"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->PLATFORM_HISI:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    .line 19
    new-instance v4, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    const-string v5, "PLATFORM_EXYNOS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->PLATFORM_EXYNOS:Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    .line 14
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    move-result-object v0

    sput-object v0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->$VALUES:[Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    .line 31
    new-instance v0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform$1;

    invoke-direct {v0}, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform$1;-><init>()V

    sput-object v0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;
    .registers 2

    .line 14
    const-class v0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;
    .registers 1

    .line 14
    sget-object v0, Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->$VALUES:[Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    invoke-virtual {v0}, [Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

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

    .line 23
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
