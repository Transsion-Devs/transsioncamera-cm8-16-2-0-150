.class public final enum Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

.field public static final enum UI5_ANIM_DEFAULT:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

.field public static final enum UI5_ANIM_POP_SETTING_HIDE:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

.field public static final enum UI5_ANIM_POP_SETTING_SHOW:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;
    .registers 3

    .line 89
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->UI5_ANIM_DEFAULT:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    sget-object v1, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->UI5_ANIM_POP_SETTING_SHOW:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    sget-object v2, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->UI5_ANIM_POP_SETTING_HIDE:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 90
    new-instance v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    const-string v1, "UI5_ANIM_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->UI5_ANIM_DEFAULT:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    .line 91
    new-instance v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    const-string v1, "UI5_ANIM_POP_SETTING_SHOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->UI5_ANIM_POP_SETTING_SHOW:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    new-instance v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    const-string v1, "UI5_ANIM_POP_SETTING_HIDE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->UI5_ANIM_POP_SETTING_HIDE:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    .line 89
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->$values()[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->$VALUES:[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;
    .registers 2

    .line 89
    const-class v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;
    .registers 1

    .line 89
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->$VALUES:[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    return-object v0
.end method
