.class public interface abstract annotation Lcom/ss/android/vesdk/VEConfigKeys$ConfigKeyItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEConfigKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ConfigKeyItem"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract configType()Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;
.end method

.method public abstract dataType()Lcom/ss/android/vesdk/VEConfigCenter$DataType;
.end method

.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract description()Ljava/lang/String;
.end method
