.class public final enum Lcom/ss/android/vesdk/VEConfigCenter$ABType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEConfigCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ABType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEConfigCenter$ABType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEConfigCenter$ABType;

.field public static final enum FORCAMERA:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

.field public static final enum FOREFFECT:Lcom/ss/android/vesdk/VEConfigCenter$ABType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 985
    new-instance v0, Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    const-string v1, "FOREFFECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter$ABType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEConfigCenter$ABType;->FOREFFECT:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    .line 986
    new-instance v1, Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    const-string v2, "FORCAMERA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter$ABType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEConfigCenter$ABType;->FORCAMERA:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    .line 984
    filled-new-array {v0, v1}, [Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEConfigCenter$ABType;->$VALUES:[Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 984
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ABType;
    .registers 2

    .line 984
    const-class v0, Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEConfigCenter$ABType;
    .registers 1

    .line 984
    sget-object v0, Lcom/ss/android/vesdk/VEConfigCenter$ABType;->$VALUES:[Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEConfigCenter$ABType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    return-object v0
.end method
