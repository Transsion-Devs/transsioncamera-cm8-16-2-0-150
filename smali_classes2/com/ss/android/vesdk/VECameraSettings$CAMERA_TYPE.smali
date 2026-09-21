.class public final enum Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VECameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAMERA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NULL:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final enum TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final enum TYPE2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final enum TYPE_BEWO:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final enum TYPE_CamKit:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final enum TYPE_GNOB:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final enum TYPE_GNOB_MEDIA:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final enum TYPE_GNOB_Unit:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final enum TYPE_OGXM:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final enum TYPE_OGXM_V2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final enum TYPE_VENDOR_GNOB:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public static final enum TYPE_VENDOR_RDHW:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 79
    new-instance v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->NULL:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 80
    new-instance v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v2, "TYPE1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 81
    new-instance v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v3, "TYPE2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 82
    new-instance v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v4, "TYPE_OGXM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_OGXM:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 83
    new-instance v4, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v5, "TYPE_GNOB_MEDIA"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_GNOB_MEDIA:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 84
    new-instance v5, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v6, "TYPE_CamKit"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_CamKit:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 85
    new-instance v6, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v7, "TYPE_BEWO"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_BEWO:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 86
    new-instance v7, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v8, "TYPE_GNOB_Unit"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_GNOB_Unit:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 87
    new-instance v8, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v9, "TYPE_OGXM_V2"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_OGXM_V2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 88
    new-instance v9, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v10, "TYPE_GNOB"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_GNOB:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 89
    new-instance v10, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v11, "TYPE_VENDOR_RDHW"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_VENDOR_RDHW:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 90
    new-instance v11, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const-string v12, "TYPE_VENDOR_GNOB"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_VENDOR_GNOB:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 78
    filled-new-array/range {v0 .. v11}, [Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->$VALUES:[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 102
    new-instance v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
    .registers 2

    .line 78
    const-class v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
    .registers 1

    .line 78
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->$VALUES:[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

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

    .line 94
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
