.class Lcom/miui/compass/CompassActivity$3;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 4
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 462
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    if-nez p2, :cond_3

    .line 467
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$800(Lcom/miui/compass/CompassActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$900(Lcom/miui/compass/CompassActivity;)V

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miui/compass/CompassActivity;->access$1002(Lcom/miui/compass/CompassActivity;J)J

    goto :goto_0

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$1000(Lcom/miui/compass/CompassActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/compass/CompassActivity;->access$700(Lcom/miui/compass/CompassActivity;Z)V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 441
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v2, -0x4080

    mul-float v0, v1, v2

    .line 442
    .local v0, direction:F
    iget-object v1, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v2, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v2, v0}, Lcom/miui/compass/CompassActivity;->access$500(Lcom/miui/compass/CompassActivity;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/compass/CompassActivity;->access$202(Lcom/miui/compass/CompassActivity;F)F

    .line 444
    sget-boolean v1, Landroid/os/Build;->IS_MIONE:Z

    if-nez v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    if-nez v1, :cond_3

    .line 449
    iget-object v1, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v1}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v1}, Lcom/miui/compass/CompassActivity;->access$800(Lcom/miui/compass/CompassActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v1}, Lcom/miui/compass/CompassActivity;->access$900(Lcom/miui/compass/CompassActivity;)V

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/compass/CompassActivity;->access$1002(Lcom/miui/compass/CompassActivity;J)J

    goto :goto_0

    .line 454
    :cond_3
    iget-object v1, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v1}, Lcom/miui/compass/CompassActivity;->access$000(Lcom/miui/compass/CompassActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v3}, Lcom/miui/compass/CompassActivity;->access$1000(Lcom/miui/compass/CompassActivity;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/compass/CompassActivity;->access$700(Lcom/miui/compass/CompassActivity;Z)V

    goto :goto_0
.end method
