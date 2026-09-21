.class public final enum Lcom/ss/android/ttve/model/VEAudioDeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttve/model/VEAudioDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttve/model/VEAudioDeviceType;

.field public static final enum BLUETOOTH:Lcom/ss/android/ttve/model/VEAudioDeviceType;

.field public static final enum DEFAULT:Lcom/ss/android/ttve/model/VEAudioDeviceType;

.field public static final enum WIRED:Lcom/ss/android/ttve/model/VEAudioDeviceType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 8
    new-instance v0, Lcom/ss/android/ttve/model/VEAudioDeviceType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttve/model/VEAudioDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->DEFAULT:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    .line 13
    new-instance v1, Lcom/ss/android/ttve/model/VEAudioDeviceType;

    const-string v2, "WIRED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttve/model/VEAudioDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttve/model/VEAudioDeviceType;->WIRED:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    .line 19
    new-instance v2, Lcom/ss/android/ttve/model/VEAudioDeviceType;

    const-string v3, "BLUETOOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/ttve/model/VEAudioDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/ttve/model/VEAudioDeviceType;->BLUETOOTH:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    .line 3
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/ttve/model/VEAudioDeviceType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->$VALUES:[Lcom/ss/android/ttve/model/VEAudioDeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttve/model/VEAudioDeviceType;
    .registers 2

    .line 3
    const-class v0, Lcom/ss/android/ttve/model/VEAudioDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/model/VEAudioDeviceType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttve/model/VEAudioDeviceType;
    .registers 1

    .line 3
    sget-object v0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->$VALUES:[Lcom/ss/android/ttve/model/VEAudioDeviceType;

    invoke-virtual {v0}, [Lcom/ss/android/ttve/model/VEAudioDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttve/model/VEAudioDeviceType;

    return-object v0
.end method
