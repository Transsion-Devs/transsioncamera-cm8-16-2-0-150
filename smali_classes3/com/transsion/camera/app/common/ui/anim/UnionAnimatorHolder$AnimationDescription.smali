.class public final enum Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationDescription"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

.field public static final enum UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;
    .registers 1

    .line 85
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    filled-new-array {v0}, [Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 86
    new-instance v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    const-string v1, "UI5_ANIM_PREVIEW_TRANSLATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    .line 85
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->$values()[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->$VALUES:[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;
    .registers 2

    .line 85
    const-class v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;
    .registers 1

    .line 85
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->$VALUES:[Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    return-object v0
.end method
