.class public final enum Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEDuetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "kPlayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

.field public static final enum ATTACH:Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

.field public static final enum DETACH:Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 17
    new-instance v0, Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    const-string v1, "ATTACH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;->ATTACH:Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    .line 18
    new-instance v1, Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    const-string v2, "DETACH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;->DETACH:Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    .line 16
    filled-new-array {v0, v1}, [Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;->$VALUES:[Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;
    .registers 2

    .line 16
    const-class v0, Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;
    .registers 1

    .line 16
    sget-object v0, Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;->$VALUES:[Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    return-object v0
.end method
