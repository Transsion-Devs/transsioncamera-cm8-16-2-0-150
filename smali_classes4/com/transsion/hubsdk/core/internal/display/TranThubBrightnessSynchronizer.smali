.class public Lcom/transsion/hubsdk/core/internal/display/TranThubBrightnessSynchronizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/display/ITranBrightnessSynchronizerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public brightnessFloatToInt(F)I
    .registers 2

    .line 22
    invoke-static {p1}, Lcom/transsion/hubsdk/internal/display/TranBrightnessSynchronizerExt;->brightnessFloatToInt(F)I

    move-result p0

    return p0
.end method
