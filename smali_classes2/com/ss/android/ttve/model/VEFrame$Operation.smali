.class public final enum Lcom/ss/android/ttve/model/VEFrame$Operation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/model/VEFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttve/model/VEFrame$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttve/model/VEFrame$Operation;

.field public static final enum OP_CONVERT:Lcom/ss/android/ttve/model/VEFrame$Operation;

.field public static final enum OP_COPY:Lcom/ss/android/ttve/model/VEFrame$Operation;

.field public static final enum OP_ROTATION:Lcom/ss/android/ttve/model/VEFrame$Operation;

.field public static final enum OP_SCALE:Lcom/ss/android/ttve/model/VEFrame$Operation;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 59
    new-instance v0, Lcom/ss/android/ttve/model/VEFrame$Operation;

    const-string v1, "OP_SCALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttve/model/VEFrame$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_SCALE:Lcom/ss/android/ttve/model/VEFrame$Operation;

    .line 60
    new-instance v1, Lcom/ss/android/ttve/model/VEFrame$Operation;

    const-string v2, "OP_ROTATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttve/model/VEFrame$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_ROTATION:Lcom/ss/android/ttve/model/VEFrame$Operation;

    .line 61
    new-instance v2, Lcom/ss/android/ttve/model/VEFrame$Operation;

    const-string v3, "OP_CONVERT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/ttve/model/VEFrame$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_CONVERT:Lcom/ss/android/ttve/model/VEFrame$Operation;

    .line 62
    new-instance v3, Lcom/ss/android/ttve/model/VEFrame$Operation;

    const-string v4, "OP_COPY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/ttve/model/VEFrame$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/ttve/model/VEFrame$Operation;->OP_COPY:Lcom/ss/android/ttve/model/VEFrame$Operation;

    .line 58
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/ttve/model/VEFrame$Operation;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/model/VEFrame$Operation;->$VALUES:[Lcom/ss/android/ttve/model/VEFrame$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttve/model/VEFrame$Operation;
    .registers 2

    .line 58
    const-class v0, Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/model/VEFrame$Operation;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttve/model/VEFrame$Operation;
    .registers 1

    .line 58
    sget-object v0, Lcom/ss/android/ttve/model/VEFrame$Operation;->$VALUES:[Lcom/ss/android/ttve/model/VEFrame$Operation;

    invoke-virtual {v0}, [Lcom/ss/android/ttve/model/VEFrame$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttve/model/VEFrame$Operation;

    return-object v0
.end method
