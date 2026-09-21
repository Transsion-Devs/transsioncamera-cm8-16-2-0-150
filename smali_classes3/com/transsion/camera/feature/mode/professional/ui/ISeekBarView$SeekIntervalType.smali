.class public final enum Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeekIntervalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

.field public static final enum TYPE_MAX_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

.field public static final enum TYPE_MIDDLE_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

.field public static final enum TYPE_SMALL_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;
    .registers 3

    .line 16
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_MAX_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    sget-object v1, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_MIDDLE_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    sget-object v2, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_SMALL_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    const-string v1, "TYPE_MAX_INTERVAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_MAX_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    .line 18
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    const-string v1, "TYPE_MIDDLE_INTERVAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_MIDDLE_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    .line 19
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    const-string v1, "TYPE_SMALL_INTERVAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->TYPE_SMALL_INTERVAL:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    .line 16
    invoke-static {}, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->$values()[Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->$VALUES:[Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;
    .registers 2

    .line 16
    const-class v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;
    .registers 1

    .line 16
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->$VALUES:[Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$SeekIntervalType;

    return-object v0
.end method
