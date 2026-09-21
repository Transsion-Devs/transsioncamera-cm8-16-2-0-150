.class public final enum Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GET_FRAMES_FLAGS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

.field public static final enum GET_FRAMES_MODE_NOEFFECT:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

.field public static final enum GET_FRAMES_MODE_NOEFFECT_SCORE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

.field public static final enum GET_FRAMES_MODE_NORMAL:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

.field public static final enum GET_FRAMES_MODE_NORMAL_SCORE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

.field public static final enum GET_FRAMES_MODE_ORIGINAL:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

.field public static final enum GET_FRAMES_MODE_ORIGINAL_SCORE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 96
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    const-string v1, "GET_FRAMES_MODE_NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NORMAL:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    .line 101
    new-instance v1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    const-string v2, "GET_FRAMES_MODE_NOEFFECT"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NOEFFECT:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    .line 106
    new-instance v2, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    const-string v3, "GET_FRAMES_MODE_ORIGINAL"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_ORIGINAL:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    .line 111
    new-instance v3, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    const/4 v4, 0x3

    const/16 v6, 0x9

    const-string v7, "GET_FRAMES_MODE_NORMAL_SCORE"

    invoke-direct {v3, v7, v4, v6}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NORMAL_SCORE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    .line 116
    new-instance v4, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    const-string v6, "GET_FRAMES_MODE_NOEFFECT_SCORE"

    const/16 v7, 0xa

    invoke-direct {v4, v6, v5, v7}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NOEFFECT_SCORE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    .line 121
    new-instance v5, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    const/4 v6, 0x5

    const/16 v7, 0xc

    const-string v8, "GET_FRAMES_MODE_ORIGINAL_SCORE"

    invoke-direct {v5, v8, v6, v7}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_ORIGINAL_SCORE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    .line 92
    filled-new-array/range {v0 .. v5}, [Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->$VALUES:[Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput p3, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;
    .registers 2

    .line 92
    const-class v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;
    .registers 1

    .line 92
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->$VALUES:[Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    invoke-virtual {v0}, [Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 130
    iget p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;->mValue:I

    return p0
.end method
