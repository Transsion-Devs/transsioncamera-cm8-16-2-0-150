.class public final enum Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/IUIAnimatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimatorType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

.field public static final enum TOP_BAR:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

.field public static final enum TOP_BAR_LEFT:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

.field public static final enum TOP_BAR_RIGHT:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;
    .registers 3

    .line 6
    sget-object v0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    sget-object v1, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR_LEFT:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    sget-object v2, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR_RIGHT:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 7
    new-instance v0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    const-string v1, "TOP_BAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    .line 8
    new-instance v0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    const-string v1, "TOP_BAR_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR_LEFT:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    .line 9
    new-instance v0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    const-string v1, "TOP_BAR_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR_RIGHT:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    .line 6
    invoke-static {}, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->$values()[Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->$VALUES:[Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;
    .registers 2

    .line 6
    const-class v0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;
    .registers 1

    .line 6
    sget-object v0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->$VALUES:[Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    return-object v0
.end method
