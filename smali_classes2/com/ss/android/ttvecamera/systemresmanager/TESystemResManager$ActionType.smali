.class public final enum Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

.field public static final enum BOOST_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

.field public static final enum RESTORE_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

.field public static final enum UNKNOWN:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 10
    new-instance v0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->UNKNOWN:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    .line 11
    new-instance v1, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    const-string v2, "BOOST_CPU"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->BOOST_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    .line 12
    new-instance v2, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    const-string v3, "RESTORE_CPU"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->RESTORE_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    .line 9
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->$VALUES:[Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;
    .registers 2

    .line 9
    const-class v0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;
    .registers 1

    .line 9
    sget-object v0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->$VALUES:[Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    invoke-virtual {v0}, [Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    return-object v0
.end method
