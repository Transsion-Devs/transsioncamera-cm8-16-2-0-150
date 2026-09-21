.class public interface abstract Lcom/bytedance/ies/nle/editor_jni/INLEBrushRuntime;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract begin2DBrush()I
.end method

.method public abstract end2DBrush(Ljava/lang/String;)I
.end method

.method public abstract get2DBrushStrokeCount()I
.end method

.method public abstract is2DBrushEmpty()Z
.end method

.method public abstract processPanEvent(FFFFF)I
.end method

.method public abstract processTouchDownEvent(FFLcom/bytedance/ies/nle/editor_jni/NLEGestureType;)I
.end method

.method public abstract processTouchUpEvent(FFLcom/bytedance/ies/nle/editor_jni/NLEGestureType;)I
.end method

.method public abstract set2DBrushCanvasAlpha(F)I
.end method

.method public abstract set2DBrushColor(I)I
.end method

.method public abstract set2DBrushSize(F)I
.end method

.method public abstract undo2DBrush()I
.end method
