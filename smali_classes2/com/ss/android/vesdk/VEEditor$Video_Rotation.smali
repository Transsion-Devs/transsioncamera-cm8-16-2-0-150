.class public final enum Lcom/ss/android/vesdk/VEEditor$Video_Rotation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Video_Rotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEditor$Video_Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

.field public static final enum VideoRotation_0:Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

.field public static final enum VideoRotation_180:Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

.field public static final enum VideoRotation_270:Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

.field public static final enum VideoRotation_90:Lcom/ss/android/vesdk/VEEditor$Video_Rotation;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 513
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    const-string v1, "VideoRotation_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;->VideoRotation_0:Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    .line 517
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    const-string v2, "VideoRotation_90"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;->VideoRotation_90:Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    .line 521
    new-instance v2, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    const-string v3, "VideoRotation_180"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;->VideoRotation_180:Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    .line 525
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    const-string v4, "VideoRotation_270"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;->VideoRotation_270:Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    .line 509
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 509
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$Video_Rotation;
    .registers 2

    .line 509
    const-class v0, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$Video_Rotation;
    .registers 1

    .line 509
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$Video_Rotation;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$Video_Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$Video_Rotation;

    return-object v0
.end method
