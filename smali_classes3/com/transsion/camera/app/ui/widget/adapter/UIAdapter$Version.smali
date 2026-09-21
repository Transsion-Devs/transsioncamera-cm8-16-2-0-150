.class public final enum Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

.field public static final enum COMMON:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

.field public static final enum UI3:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

.field public static final enum UI4:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

.field public static final enum UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;
    .registers 4

    .line 56
    sget-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->COMMON:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    sget-object v1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI3:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    sget-object v2, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI4:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    sget-object v3, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 57
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->COMMON:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v1, "UI3"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI3:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v1, "UI4"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI4:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v1, "UI5"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    .line 56
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->$values()[Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->$VALUES:[Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;
    .registers 2

    .line 56
    const-class v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;
    .registers 1

    .line 56
    sget-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->$VALUES:[Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    return-object v0
.end method
