.class final enum Lcom/ss/android/vesdk/TERecorder$RecordStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RecordStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/TERecorder$RecordStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/TERecorder$RecordStatus;

.field public static final enum IDLE:Lcom/ss/android/vesdk/TERecorder$RecordStatus;

.field public static final enum INTED:Lcom/ss/android/vesdk/TERecorder$RecordStatus;

.field public static final enum RECORDING:Lcom/ss/android/vesdk/TERecorder$RecordStatus;

.field public static final enum RUNNING:Lcom/ss/android/vesdk/TERecorder$RecordStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 241
    new-instance v0, Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/TERecorder$RecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/TERecorder$RecordStatus;->IDLE:Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    .line 242
    new-instance v1, Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    const-string v2, "INTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/TERecorder$RecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/TERecorder$RecordStatus;->INTED:Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    .line 243
    new-instance v2, Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    const-string v3, "RUNNING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/TERecorder$RecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/TERecorder$RecordStatus;->RUNNING:Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    .line 244
    new-instance v3, Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    const-string v4, "RECORDING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/TERecorder$RecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/TERecorder$RecordStatus;->RECORDING:Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    .line 240
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/TERecorder$RecordStatus;->$VALUES:[Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/TERecorder$RecordStatus;
    .registers 2

    .line 240
    const-class v0, Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/TERecorder$RecordStatus;
    .registers 1

    .line 240
    sget-object v0, Lcom/ss/android/vesdk/TERecorder$RecordStatus;->$VALUES:[Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/TERecorder$RecordStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/TERecorder$RecordStatus;

    return-object v0
.end method
