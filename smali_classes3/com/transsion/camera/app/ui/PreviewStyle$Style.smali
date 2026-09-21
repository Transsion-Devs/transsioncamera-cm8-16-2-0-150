.class public final enum Lcom/transsion/camera/app/ui/PreviewStyle$Style;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/PreviewStyle$Style;

.field public static final enum HEIGHT_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

.field public static final enum WIDTH_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    .registers 2

    .line 66
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->WIDTH_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    sget-object v1, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->HEIGHT_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    const-string v1, "WIDTH_FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/PreviewStyle$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->WIDTH_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    .line 68
    new-instance v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    const-string v1, "HEIGHT_FULL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/PreviewStyle$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->HEIGHT_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    .line 66
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->$values()[Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->$VALUES:[Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    .registers 2

    .line 66
    const-class v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    .registers 1

    .line 66
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->$VALUES:[Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/PreviewStyle$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    return-object v0
.end method
