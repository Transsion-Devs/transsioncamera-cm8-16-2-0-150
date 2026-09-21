.class public final enum Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEGetFrameSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VEResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

.field public static final enum IMAGE_FILE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

.field public static final enum RGBA_ARRAY:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 56
    new-instance v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    const-string v1, "RGBA_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;->RGBA_ARRAY:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    .line 57
    new-instance v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    const-string v2, "IMAGE_FILE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;->IMAGE_FILE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    .line 55
    filled-new-array {v0, v1}, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;->$VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;
    .registers 2

    .line 55
    const-class v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;
    .registers 1

    .line 55
    sget-object v0, Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;->$VALUES:[Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEGetFrameSettings$VEResultType;

    return-object v0
.end method
