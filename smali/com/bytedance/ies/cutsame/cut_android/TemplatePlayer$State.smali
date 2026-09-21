.class public final enum Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

.field public static final enum ERROR:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

.field public static final enum IDLE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

.field public static final enum PAUSED:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

.field public static final enum PLAYING:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

.field public static final enum UNKNOWN:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 80
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->UNKNOWN:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    .line 81
    new-instance v1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    const-string v2, "IDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->IDLE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    .line 82
    new-instance v2, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    const-string v3, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->ERROR:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    .line 83
    new-instance v3, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    const-string v4, "PLAYING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->PLAYING:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    .line 84
    new-instance v4, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    const-string v5, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->PAUSED:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    .line 79
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->$VALUES:[Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;
    .registers 2

    .line 79
    const-class v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;
    .registers 1

    .line 79
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->$VALUES:[Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    invoke-virtual {v0}, [Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    return-object v0
.end method
