.class public final enum Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEConfigCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

.field public static final enum CONFIG_TYPE_AB:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

.field public static final enum CONFIG_TYPE_DEFAULT:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

.field public static final enum CONFIG_TYPE_SETTINGS:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 979
    new-instance v0, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    const-string v1, "CONFIG_TYPE_AB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_AB:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    .line 980
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    const-string v2, "CONFIG_TYPE_SETTINGS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_SETTINGS:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    .line 981
    new-instance v2, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    const-string v3, "CONFIG_TYPE_DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->CONFIG_TYPE_DEFAULT:Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    .line 978
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->$VALUES:[Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 978
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;
    .registers 2

    .line 978
    const-class v0, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;
    .registers 1

    .line 978
    sget-object v0, Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->$VALUES:[Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    return-object v0
.end method
