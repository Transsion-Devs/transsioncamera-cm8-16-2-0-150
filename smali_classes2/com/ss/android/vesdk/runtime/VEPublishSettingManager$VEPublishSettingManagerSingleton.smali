.class final enum Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VEPublishSettingManagerSingleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;

.field public static final enum INSTANCE:Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;


# instance fields
.field private vePublishSettingManager:Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;->INSTANCE:Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;

    .line 28
    filled-new-array {v0}, [Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;->$VALUES:[Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    new-instance p1, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;-><init>(Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$1;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;->vePublishSettingManager:Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;
    .registers 2

    .line 28
    const-class v0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;
    .registers 1

    .line 28
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;->$VALUES:[Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;

    return-object v0
.end method


# virtual methods
.method public getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager$VEPublishSettingManagerSingleton;->vePublishSettingManager:Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    return-object p0
.end method
