.class public interface abstract annotation Lcom/fasterxml/jackson/databind/annotation/JsonAppend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fasterxml/jackson/databind/annotation/JsonAppend;
        attrs = {}
        prepend = false
        props = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;,
        Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract attrs()[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;
.end method

.method public abstract prepend()Z
.end method

.method public abstract props()[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;
.end method
